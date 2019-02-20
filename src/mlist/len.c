#include <stdio.h>

main()
{
 int c;
 int l=0;
 int cl=0;

 while (EOF != (c=getchar()))
 {
  if ('\n' == c && cl > l) {l=cl; cl=0;}
  cl++;
 }

 printf("%d\n", l);
}
