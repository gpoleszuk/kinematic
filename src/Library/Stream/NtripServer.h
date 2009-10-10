#ifndef NtripServer_included
#define NtripServer_included

#include "Util.h"
#include "Socket.h"

class NtripServer: public Socket
{
public:

    NtripServer(Socket::Address addr, char *user, char *password, char *mount);
    ~NtripServer();

protected:
    bool ParseHeader();
};


#endif
