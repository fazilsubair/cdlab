%{
#include "prgm6.tab.h"
%}
%%
[0-9] { return DIGIT; }
[a-zA-Z] { return ALPHA; }
\n { return 0; }
. { return yytext[0]; }
%%


; ALGORITHM:

; Step1: Start
; Step2: Reading an expression.
; Step3: Checking the validating of the given expression according to the rule using yacc. Step4: Using expression rule print the result of the given values
; Step5: Stop


; OUTPUT:
; Test Case #1: Valid Variable Enter a variable name: a123 Valid Variable!

; Test Case #2: Invalid Variable Enter a variable name: 12aa Invalid Variable!
