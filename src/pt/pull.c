#include <stdio.h>
#include <string.h>

f()
{
 int c;

 if (' ' != (c = getchar())) return c;
 if ('i' != (c = getchar())) return c;
 if ('t' != (c = getchar())) return c;
 if ('e' != (c = getchar())) return c;
 if ('m' != (c = getchar())) return c;
 if ('s' != (c = getchar())) return c;

 do
 {
  c=getchar();
  putchar(c);
 } while ('\n' != c && EOF != c);
 return 0;
}

main()
{
 int c;
 char word[4];
 int i=0;

 while (EOF != (c=getchar()))
 {
  if ('\n' == c)
  {
   i=0;
   continue;
  }
  if (' ' != c) 
   word[i++]= (char)c;
  if (3==i)
  {
   word[i]='\0';
   if (!strcmp("var", word) && !(c=f())) return 0;
   while ('\n' != c && EOF != c) c=getchar();
   //do c=getchar(); while ('\n' != c && EOF != c);
   i=0;
  }
 }
} 
