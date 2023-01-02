%{
#include<stdio.h> #include<stdlib.h>
%}
%token NUMBER ID
%left '+''-''*''/'
%%
exp : exp'+'exp
| exp'-'exp
| exp'*'exp
| exp'/'exp
| '('exp')'
| NUMBER
| ID
;
%%
void main()
{
printf("Enter the expression: "); yyparse();
printf("Valid Expression!\n");
}
void yyerror()
{
printf("Invalid Expression!\n"); exit(0);
}