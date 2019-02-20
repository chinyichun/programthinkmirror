#include <stdio.h>
#include <string.h>

main()
{
 int c=0;
 char url[35];
 int i;

 while (EOF!=c)
  if ('h'==(c=getchar()))
  {
   url[0]='h';
   for (i=1; i<34; i++)
    url[i]=getchar();
   url[i]='\0';
   if (!strcmp("https://program-think.blogspot.com", url))
   {
    fprintf(stderr, "hit!\n");
    printf("../..");
   }
   else
   {
    for (i=33; i>0; i--) ungetc(url[i], stdin);
    putchar('h');
   }
  }
  else if (EOF!=c) putchar(c);
}
