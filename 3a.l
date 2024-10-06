%{
#include<stdio.h>
int count=0;
%}

%%
"//".*  {count++; fprintf(yyout," ");}
"/*"[a-zA-Z0-9\t\n]*"*/"   {count++; fprintf(yyout," ");}
. {fprintf(yyout,"%s", yytext);}
\n {fprintf(yyout,"\n");}
%%

int main()
{
yyin= fopen("new.txt","r");
yyout=fopen("esh.txt","w");
yylex();
printf("The no of comment lines are:%d\n",count);
}
