



%{
#include<stdio.h>
int sc=0,wc=0,lc=0,cc=0;
%}

%%
[\n] { lc++; wc++;}
[\t] { sc++; wc++;}
[" "] { sc++; wc++;}
[^\n\t ]+ {cc+=yyleng;}
%%

void main()
{
printf("Enter the input:\n"); yylex();
printf("The number of lines=%d\n",lc); printf("The number of spaces=%d\n",sc); printf("The number of words=%d\n",wc); printf("The number of characters are=%d\n",cc);
}
int yywrap( )
{
return 1;
}

; run 

; flex <prgmname>.l
; gcc lex.yy.c
; ./a.out

; ALGORITHM:

; Step 1. Start
; Step 2. Read the input file/text
; Step 3. Initialize the counters for characters, words, lines to zero Step 4. Scan the characters, words, lines and
; Step 5. increment the respective counters Step 6. Display the counts
; Step 7. Stop
