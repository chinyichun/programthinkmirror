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
 int i;

 for (i=0; i<4; i++)
  findFeeds();

 for (i=0; '0'<=(c=getchar()) && '9'>=c; i++)
  id[i]=c;
 id[i]='\0';

 puts(id);
}
