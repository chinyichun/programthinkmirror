#include <stdio.h>
#include <stdlib.h>

main(int argc, char **argv)
{
 char cmd[200];
 char id[30];
 int n;

 sscanf(argv[1], "%d", &n);
 sscanf(argv[2], "%s", id);
 sprintf(cmd, "wget --no-check-certificate -O %da.xml https://program-think.blogspot.com/feeds/%s/comments/default?max-results=999", n, id);
 puts(cmd);
 system(cmd);
}
