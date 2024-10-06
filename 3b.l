%{
#include "y.tab.h"
%}
%%
"for" {return FOR;}
"("   {return LPAREN;}
")"   {return RPAREN;}
"{"   {return LF;}
"}"   {return RF;}
"="   {return '=';}
"+"   {return '+';}
"-"   {return '-';}
">"   {return '<';}
"<"   {return '>';}
";"   {return ';';}
"=="  {return EQ;}
">="  {return GE;}
"<="  {return LE;}
"+="  {ADD_ASSIGN;}
"-="  {return SUB_ASSIGN;}
"++"  {return INC;}
"--"  {return DEC;}
[a-zA-Z]+  {return EXP;}
[0-9]+     {return NUM;}
[ \t]      {/*Ignore white spaces*/}
\n         {return 0;}
.          {/*Ignore other characters*/}
%%
int yywrap()
{
return 1;
}
