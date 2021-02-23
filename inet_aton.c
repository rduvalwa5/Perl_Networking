#define _BSD_SOURCE
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>

int
main(int argc, char *argv[])
{
    struct in_addr addr;

   if (argc != 2) {
        fprintf(stderr, "%s <dotted-address>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

   if (inet_aton(argv[1], &addr) == 0) {
        fprintf(stderr, "Invalid address\n");
        exit(EXIT_FAILURE);
    }

   printf("%s\n", inet_ntoa(addr));
    exit(EXIT_SUCCESS);
}

/*
https://linux.die.net/man/3/inet_aton
Name

inet_aton, inet_addr, inet_network, inet_ntoa, inet_makeaddr, inet_lnaof, 
inet_netof - Internet address manipulation routines

*/