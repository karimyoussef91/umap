#include <string>
#include <thread>
#include <vector>
#include <map>

#include "socket.h"
#include <unistd.h>
#include <poll.h>

#define NAME_SIZE 100

namespace Umap{

  class UmapServerManager;
  class UmapServiceThread;

  enum class uffd_actions: int{
    umap,
    unmap,
  };

  typedef struct{
    uint64_t size;
    void *base_addr;
  }region_loc;

  typedef struct{
    uffd_actions act;
    char name[NAME_SIZE];
  }ActionParam;

  class UmapServInfo{
    friend class ClientManager;
    private:
      int memfd;
      long uffd;
      std::string filename;
      region_loc loc;
      int umap_server_fd;

      int setup_remote_umap_handle();
      void remove_remote_umap_handle();
    public:
      UmapServInfo(int sfd, std::string fname, int ufd):umap_server_fd(sfd),filename(fname),uffd(ufd){
        setup_remote_umap_handle();
      }
      ~UmapServInfo(){
        remove_remote_umap_handle();
      }
  }; 
  class ClientManager{
    private:
      std::string umap_server_path;
      int umap_server_fd;
      static ClientManager *instance;
      std::map<std::string, UmapServInfo*> file_conn_map; 
      
      ClientManager(){
        umap_server_path = "/tmp/umap_server";
      }

      UmapServInfo *cs_umap(std::string filename);
      void cs_uunmap(std::string filename);

    public:
      static ClientManager *getInstance(){
        if(!instance)
          instance = new ClientManager();
        return instance;
      }

      void *map_req(std::string filename, int prot, int flags);
      int unmap_req(char *filename);
  };

  class mappedRegionInfo{
    friend class UmapServiceThread;
    private:
      int memfd;
      region_loc reg;
      int filefd;
    public:
       mappedRegionInfo(int fd, int mfd, void *b, uint64_t l):filefd(fd), memfd(mfd){ reg.base_addr = b; reg.size = l;}
      ~mappedRegionInfo(){}
  };
   
  class UmapServiceThread{
    private:
      int               csfd;
      pthread_t         t;
      UmapServerManager *mgr;
      int               uffd;
      int               pipefds[2];
    public:
      UmapServiceThread(uint64_t fd, int ufd, UmapServerManager *m):csfd(fd),mgr(m),uffd(ufd){
         pipe(pipefds); 
      }
      void *submitUmapRequest(std::string filename, uint64_t csfd);
      int submitUnmapRequest(std::string filename, uint64_t csfd);
      void *serverLoop();
      int start_thread();
      static void *ThreadEntryFunc(void *p){
        return ((UmapServiceThread*)p)->serverLoop();
      }
      ~UmapServiceThread(){
      //kill the thread signal
        ::write(pipefds[1],0,1); 
      }
  };
   
  class UmapServerManager{
      friend class UmapServiceThread;
    private:
      static UmapServerManager *Instance;
      std::map<std::string, mappedRegionInfo*> file_to_region_map;
      std::vector<UmapServiceThread*> service_threads;
      
      UmapServerManager(){}
      mappedRegionInfo *find_mapped_region(std::string filename){
        auto it = file_to_region_map.find(filename);
        if(it==file_to_region_map.end()){
          return NULL;
        }else{
          return it->second;
        }
      }
      void add_mapped_region(std::string filename, mappedRegionInfo* m);
    public:
      static UmapServerManager *getInstance(){
        if(!Instance)
          Instance = new UmapServerManager();
        return Instance;
      }
      void start_service_thread(int csfd, int uffd);
      void stop_service_threads(); 
  };

  void start_umap_service(int csfd);
}
