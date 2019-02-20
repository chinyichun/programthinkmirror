#include <stdio.h>

main()
{
 int c;
 int i;

 while (EOF!=(c=getchar()))
 {
  if ('<'!=c) {putchar(c); continue;}
  if ('f'!=(c=getchar())) {printf("<%c", c); continue;}
  if ('e'!=(c=getchar())) {printf("<f%c", c); continue;}
  if ('e'!=(c=getchar())) {printf("<fe%c", c); continue;}
  if ('d'!=(c=getchar())) {printf("<fee%c", c); continue;}
  if (' '!=(c=getchar())) {printf("<feed%c", c); continue;}
  printf("<feed ");
  for (i=0; i<37; i++) c=getchar();
  break;
 }

 while (EOF!=(c=getchar())) putchar(c);
}
