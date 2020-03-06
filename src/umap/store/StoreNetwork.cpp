//////////////////////////////////////////////////////////////////////////////
// Copyright 2017-2020 Lawrence Livermore National Security, LLC and other
// UMAP Project Developers. See the top-level LICENSE file for details.
//
// SPDX-License-Identifier: LGPL-2.1-only
//////////////////////////////////////////////////////////////////////////////
#include <unistd.h>
#include <stdio.h>
#include "StoreNetwork.h"
#include <iostream>
#include <sstream>
#include <string.h>
#include <cassert>

#include "umap/store/Store.hpp"
#include "umap/util/Macros.hpp"

#include <mpi.h>
#include "rpc_server.hpp"
#include "rpc_client.hpp"

static int g_rank=-1;

namespace Umap {

  StoreNetwork::~StoreNetwork(){
    fini_servers();
  }

  
  StoreNetwork::StoreNetwork( std::size_t _rsize_ )
    :rsize(_rsize_)
  {
    
    /* bootstraping to determine server and clients usnig MPI */
    int flag_mpi_initialized;
    MPI_Initialized(&flag_mpi_initialized);
    if( !flag_mpi_initialized )
      MPI_Init(NULL, NULL);

    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    is_server = (rank==0) ?true : false;
    g_rank = rank;
    UMAP_LOG(Info, "MPI rank " <<g_rank<< " / " << size << ", is_server=" << is_server);
    
    /* init Mercurry */
    
    /* create Mercurry context */
    //hg_context = HG_Context_create(hg_class);
    
    /* Lookup the server address */
    hg_return_t ret;
    if(is_server){

      init_servers();
    MPI_Barrier(MPI_COMM_WORLD);
      
    }else{
    MPI_Barrier(MPI_COMM_WORLD);
      init_client();
      
    }
    
    UMAP_LOG(Info, "Terminating");
    std::exit(EXIT_SUCCESS);
  }

  ssize_t StoreNetwork::read_from_store(char* buf, size_t nb, off_t off)
  {
    size_t rval = 0;
    return rval;
  }

  ssize_t  StoreNetwork::write_to_store(char* buf, size_t nb, off_t off)
  {
    size_t rval = 0;

    return rval;
  }

}
