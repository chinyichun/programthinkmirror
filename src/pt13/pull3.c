#include <stdio.h>
#include <stdlib.h>

main(int argc, char **argv)
{
 char cmd[200];
 char id[30];
 int n;
 FILE *f;

 sscanf(argv[1], "%d", &n);
 sscanf(argv[2], "%s", id);

 f=fopen("url", "w");
 fprintf(f, "https://program-think.blogspot.com/feeds/%s/comments/default?max-results=999&start-index=500\n", id);
 fclose(f);

 sprintf(cmd, "wget --no-check-certificate -i url -O %db.xml", n);
 puts(cmd);
 system(cmd);
}
