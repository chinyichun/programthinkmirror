#include <stdio.h>
#include <stdlib.h>

main()
{
 char url[90];
 char curl[90];
 char cmd[90];
 int i;

 for (i=0; i<534; i++)
 {
  gets(url);
  sprintf(curl, "/var/www/html%s", url);
  puts(curl);
  sprintf(cmd, "./link %d < %s > out", i, curl);
  puts(cmd);
  system(cmd);
  sprintf(cmd, "cp out %s", curl);
  puts(cmd);
  system(cmd);
 }
}
