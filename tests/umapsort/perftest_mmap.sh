#!/bin/bash
#############################################################################
# Copyright 2017-2019 Lawrence Livermore National Security, LLC and other
# UMAP Project Developers. See the top-level LICENSE file for details.
#
# SPDX-License-Identifier: LGPL-2.1-only
#############################################################################
function free_mem {
  m=`grep MemFree /proc/meminfo | awk -v N=2 '{print $N}'`
  fm=$(((${m}/1024)/1024))
  echo $fm GB Free
}

function drop_page_cache {
  echo "Dropping page cache"
  echo 3 > /proc/sys/vm/drop_caches
}

function disable_swap {
  echo "Disabling swap"
  swapoff -av
}

function set_readahead {
  fs=`mount | grep intel | cut -d " " -f 1`
  blockdev --setra $readahead $fs
  ra=`blockdev --getra $fs`
  echo "Read ahead set to $ra for $fs"
}

function amounttowaste {
  m=`grep MemFree /proc/meminfo | awk -v N=2 '{print $N}'`
  echo $m
  fm=$(((${m}/1024)/1024))
  waste=$((${fm}-${memtoleave}))
  echo $fm GB Available, Wasting $waste GB
}

function setuptmpfs {
  if [ ! -d /mnt/tmpfs ]; then
    mkdir -p /mnt/tmpfs
  fi

  # Unmount / Reset of already mounted
  fs=`stat -f -c '%T' /mnt/tmpfs`

  if [ "$fs" = "tmpfs" ]; then
    echo "Resetting tmpfs"
    umount /mnt/tmpfs
  fi

  fs=`stat -f -c '%T' /mnt/tmpfs`
  if [ "$fs" != "tmpfs" ]; then
    if [ ! -d /mnt/tmpfs ]; then
      mkdir -p /mnt/tmpfs
    fi
    chmod go+rwx /mnt/tmpfs
    mount -t tmpfs -o size=600g tmpfs /mnt/tmpfs
    fs=`stat -f -c '%T' /mnt/tmpfs`
    echo "/mnt/tmpfs mounted as: $fs"
  else
    echo "Unable to reset /mnt/tmpfs, exiting"
    exit 1
  fi
}

function waste_memory {
  echo "Wasting $waste GB of memory"
  echo dd if=/dev/zero of=/mnt/tmpfs/${waste}GB bs=4096 count=$((${waste}*256*1024))
  dd if=/dev/zero of=/mnt/tmpfs/${waste}GB bs=4096 count=$((${waste}*256*1024))
}

memtoleave=$((64+6))
readahead=256

set_readahead
disable_swap
setuptmpfs
drop_page_cache
amounttowaste
waste_memory

for t in 128 64 32 16
do
  rm -f /mnt/intel/sort_perf_data
  drop_page_cache
  free_mem
  cmd="./umapsort --usemmap --directio -f /mnt/intel/sort_perf_data -p $(((96*1024*1024*1024)/4096)) -n 1 -b $(((64*1024*1024*1024)/4096)) -t $t"
  date
  echo $cmd
  time sh -c "$cmd"
done
