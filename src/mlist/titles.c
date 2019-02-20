#include <stdio.h>
#include <string.h>

main()
{
 char s[130000];
 int i;

 while (NULL != gets(s))
  if (!strcmp("<h1 class='post-title entry-title'>", s)) 
  {
   gets(s);
   for (i=43; '\''!=s[i]; i++) putchar(s[i]);
   putchar('\n');
  }
}
