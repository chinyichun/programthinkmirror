#include <stdio.h>

int n;

add()
{
 int c;

 while ('\n'!=(c=getchar()) && EOF != c)
  putchar(c);
 putchar(c);
 printf("<h1><a href='../../forum/%da.xml'>View page A of comments for this blog article.</a></h1>\n", n);
 printf("<h1><a href='../../forum/%db.xml'>View page B of comments for this blog article.</a></h1>\n", n);
}

main(int argc, char **argv)
{
 int c;

 sscanf(argv[1], "%d", &n);
 while (EOF != (c=getchar()))
 {
  putchar(c);
  if ('<'==c)
  {
   c=getchar();
   putchar(c);
   if ('h'!=c) continue;
   c=getchar();
   putchar(c);
   if ('1'!=c) continue;
   add();
   break;
  }
 }

 while (EOF != (c=getchar()))
  putchar(c);
}
