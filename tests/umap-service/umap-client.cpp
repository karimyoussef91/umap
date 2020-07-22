#include <iostream>
#include "umap/umap.h"
#include <sys/mman.h>

int main(int argc, char *argv[]){
  void *mapped_addr;;
  if(argc < 2){
    std::cout<<"Please provide a filename to umap";
    exit(-1);
  }
  mapped_addr = client_umap(argv[1], PROT_READ, MAP_SHARED|MAP_FIXED);
  client_uunmap(argv[1]); 
}
