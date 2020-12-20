#!/bin/bash

while IFS="" read -rn1 p
do
 if [ "$p" = "<" ]
 then
  IFS="" read -rn1 p2
  if [ "$p2" = "e" ]
  then
   IFS="" read -rn1 p3
   if [ "$p3" = "n" ]
   then
    IFS="" read -rn1 p4
    if [ "$p4" = "t" ]
    then
     IFS="" read -rn1 p5
     if [ "$p5" = "r" ]
     then
      IFS="" read -rn1 p6
      if [ "$p6" = "y" ]
      then
       IFS="" read -rn1 p7
       if [ "$p7" = ">" ]
       then
        break;
       else
        echo -n "$p$p2$p3$p4$p5$p6$p7"
       fi
      else
       echo -n "$p$p2$p3$p4$p5$p6"
      fi
     else
      echo -n "$p$p2$p3$p4$p5"
     fi
    else
     echo -n "$p$p2$p3$p4"
    fi
   else
    echo -n "$p$p2$p3"
   fi
  else
   echo -n "$p$p2"
  fi
 else
  echo -n "$p"
 fi
done

printf "\n"
