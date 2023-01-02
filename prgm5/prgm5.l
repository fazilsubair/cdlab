%{
#include "prgm5.tab.h"
%}
%%
[0-9]+ { return NUMBER; }
[_a-zA-Z][_a-zA-Z0-9]* { return ID; }
\n { return 0; }
. { return yytext[0]; }
%%
int yywrap()
{
return 1;
}

; ALGORITHM:

; Step1: Start
; Step2: Reading an expression.
; Step3: Checking the validating of the given expression according to the rule using yacc. Step4: Using expression rule print the result of the given values
; Step5: Stop

; Execution:
; lex prgm5.l 
; yacc -d prgm5.y
; gcc lex.yy.c y.tab.c
; ./a.out

; Test Case #1: Valid Expression Enter the expression: 12+23-8 Valid Expression!