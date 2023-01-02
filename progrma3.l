
%{
#include<stdio.h> 
int i;
%}
%%
[a-z A-Z]* { for(i=0;
i<=yyleng;
i++)
{
if((yytext[i]=='a')&&(yytext[i+1]=='b')&&(yytext[i+2]=='c'))
{
yytext[i]='A';
yytext[i+1]='B';
yytext[i+2]='C';
}
}
printf("%s",yytext);
}
. {ECHO;}
\n {ECHO;}
%%

void main()
{
yylex();
}
int yywrap()
{
return 1;
}


; ALGORITHM:

; Step 1. Start
; Step 2. Read the input text
; Step 3. If the first three characters are “a”, “b”, and “c” then Replace the corresponding characters by “A”,”B” and “C”.
; Step 4. Print the updated text Step 5. Stop

; OUTPUT:
; abc ABC

; flex prgmname.l
; gcc lex.yy.c
; ./a.out