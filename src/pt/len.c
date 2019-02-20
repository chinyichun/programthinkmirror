#include <stdio.h>

main()
{
 int c;
 int l=0;
 int cl=0;
 int ln=0;
 int cln=0;

 while (EOF != (c=getchar()))
 {
  if ('\n' == c)
  {
   cln++;
   if (cl > l) {l=cl; ln=cln;}
   cl=0;
  }
  cl++;
 }

 printf("%d\n", l);
 printf("%d\n", ln);
}
