%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("Number\n"); }
[a-zA-Z]+   { printf("Identifier\n"); }

\n          ;
[ \t]       ;
.           ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter input: ");
    yylex();
    return 0;
}