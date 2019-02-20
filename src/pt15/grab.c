#include <stdio.h>

int n;

grab()
{
 int c;
 int i;
 char sn[6];

 if ('c' != getchar()) return 0;
 if ('o' != getchar()) return 0;
 if ('m' != getchar()) return 0;
 if ('m' != getchar()) return 0;
 if ('e' != getchar()) return 0;
 if ('n' != getchar()) return 0;
 if ('t' != getchar()) return 0;
 if ('s' != getchar()) return 0;
 if ('\'' != getchar()) return 0;
 if ('>' != getchar()) return 0;

 for (i=0; '\n' != (c=getchar()); i++)
  sn[i] = c;
 sn[i]='\0';
 sscanf(sn, "%d", &n);
 return 1;
}

main()
{
 int c;

 while (EOF != (c=getchar()))
  if ('#'==c && grab())
   printf("%d\n", n);
}
