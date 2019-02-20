#include <stdio.h>
#include <assert.h>
#include <string.h>

pump()
{
 int c;

 while ('\'' != (c=getchar()) && EOF != c);
 while ('\'' != (c=getchar()) && EOF != c)
  putchar(c);
}

suppress()
{
 int c;

 while ('\'' != (c=getchar()) && EOF != c);
 while ('\'' != (c=getchar()) && EOF != c);
}

makeTag()
{
 char tag[20];
 int c;
 int i=0;

 while ('\'' != (c=getchar()) && EOF != c)
 {
  tag[i++]=c;
  assert(i<20);
 }
 tag[i]='\0';

 if (!strcmp("id", tag))
 {
  printf("<p>\n\t<strong><font color='red'>id: </font></strong>");
  pump();
  puts("<br>");
 }
 else if (!strcmp("parentId", tag) || !strcmp("body", tag) || !strcmp("name", tag))
 {
  printf("\t<strong><font color='red'>%s: </font></strong>", tag);
  pump();
  puts("<br>");
 }
 else if (!strcmp("displayTime", tag))
 {
  printf("\t<strong><font color='red'>displayTime: </font></strong>");
  pump();
  puts("</p>\n");
 }
 else if (!strcmp("author", tag)) return 0;
 else suppress();
}

main()
{
 int c;

 while (EOF != (c=getchar()))
  if ('\'' == c) makeTag();
 printf("</body>\n</html>\n");
}
