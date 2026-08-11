%{
#include <stdio.h>
%}

%%
[0-9]+\.[0-9]+   { printf("Float\n"); }
[0-9]+           { printf("Integer\n"); }

[ \t\n]+ ;
. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}