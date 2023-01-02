%{
#include<stdio.h>
%}
%token NUMBER
%left '+' '-'
%left '*' '/'
%%
st: exp {printf("Answer=%d\n",$$);}
    ;
exp: exp '+' exp {$$ = $1 + $3;}
    |exp '-' exp {$$ = $1 - $3;}
    |exp '*' exp {$$ = $1 * $3;}
    |exp '/' exp {$$ = $1 / $3;}
    |'('exp')' {$$ = $2;}
    |NUMBER {$$ = $1;}
    ;
%%
int main()
{
printf("Enter the expression"); yyparse();
return 0;
}
int yywrap()
{
return 0;
}

yyerror(char *s)
{
printf("Error:%s",s);
}