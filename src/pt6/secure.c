#include <stdio.h>

main()
{
 int c;

 while (EOF != (c=getchar()))
 {
  if ('h'==c)
  {
   c=getchar();
   if ('t'!=c) {printf("h%c", (char)c); continue;}
   c=getchar();
   if ('t'!=c) {printf("ht%c", (char)c); continue;}
   c=getchar();
   if ('p'!=c) {printf("htt%c", (char)c); continue;}
   c=getchar();
   if (':'!=c) {printf("http%c", (char)c); continue;}
   printf("https:");
  }
  else putchar(c);
 }
}
