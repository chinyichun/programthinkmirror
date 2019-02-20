#include <stdio.h>
#include <stdlib.h>

main()
{
 int i;
 char url[90];
 char curl[90];
 char cmd[90];

 for (i=0; i<534; i++)
 {
  gets(url);

  sprintf(curl, "https://program-think.blogspot.com%s", url);
  printf("%s\n", curl);
  sprintf(cmd, "wget --no-check-certificate -O in %s", curl);
  printf("%s\n", cmd);
  system(cmd);
  sprintf(cmd, "./pull < in >> nlist");
  printf("%s\n", cmd);
  system(cmd);
 }
}
