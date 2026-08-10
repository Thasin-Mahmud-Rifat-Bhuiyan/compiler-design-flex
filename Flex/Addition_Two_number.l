%{
#include <stdio.h>
#include <stdlib.h>

int num1, num2;
%}

%%

([0-9]+)\+([0-9]+)    {
    sscanf(yytext, "%d+%d", &num1, &num2);

    printf("First Number = %d\n", num1);
    printf("Second Number = %d\n", num2);
    printf("Sum = %d\n", num1 + num2);
}

\n      { return 0; }

[ \t]+  ;

.       { printf("Invalid Input\n"); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter an expression Like 10+20: ");
    yylex();
    return 0;
}