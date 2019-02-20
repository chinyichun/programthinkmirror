#include <stdio.h>
#include <stdlib.h>

main()
{
 int i;
 FILE *f;
 char fn[9];
 char url[90];
 char curl[90];
 char cmd[90];

 for (i=0; i<534; i++)
 {
  sprintf(fn, "%d.head", i);
  f=fopen(fn, "w");
  gets(url);
  fprintf(f, "<html>\n<meta http-equiv='Content-type' content='text/html; charset=utf-8'>\n<body>\n");
  fprintf(f, "<h1><a href='..%s'>blog article</a></h1>\n", url);
  fclose(f);

  sprintf(curl, "https://program-think.blogspot.com%s", url);
  printf("%s\n", curl);
  sprintf(cmd, "wget --no-check-certificate -O in %s", curl);
  printf("%s\n", cmd);
  system(cmd);
  sprintf(cmd, "cat in | ./pull | ./pagify | cat %d.head - > %d.html", i, i);
  printf("%s\n", cmd);
  system(cmd);
 }
}
