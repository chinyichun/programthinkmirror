#include <stdio.h>
#include <stdlib.h>

findFeeds()
{
 int c=0;

 while (EOF!=c)
 {
  while ('/'!=c && EOF!=c) c=getchar();
  if ('f'!=(c=getchar())) continue;
  if ('e'!=(c=getchar())) continue;
  if ('e'!=(c=getchar())) continue;
  if ('d'!=(c=getchar())) continue;
  if ('s'!=(c=getchar())) continue;
  if ('/'!=(c=getchar())) continue;
  return;
 }
}

main(int argc, char **argv)
{
 int c;
 char id[30];
 char cmd[200];
 int i;
 int n;
 FILE *f;

 for (i=0; i<4; i++)
  findFeeds();

 for (i=0; '0'<=(c=getchar()) && '9'>=c; i++)
  id[i]=c;
 id[i]='\0';
 sscanf(argv[1], "%d", &n);
 sprintf(cmd, "wget --no-check-certificate -O %da.xml https://program-think.blogspot.com/feeds/%s/comments/default?max-results=999", n, id);
 puts(cmd);
 system(cmd);

 f=fopen("url", "w");
 fprintf(f, "https://program-think.blogspot.com/feeds/%s/comments/default?max-results=999&start-index=500\n", id);
 fclose(f);
 sprintf(cmd, "wget --no-check-certificate -i url -O %db.xml", n);
 puts(cmd);
 system(cmd);
}
