%{
#include <stdio.h>

int lines = 1;
%}

%%
\n      { lines++; }
.       ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    printf("Lines = %d\n", lines);
    return 0;
}