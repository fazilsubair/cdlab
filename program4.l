%{
int vcount=0; 
int ccount =0;
%}

%%
[aeiouAEIOU] {vcount++;} 
[a-zA-Z] {ccount++;}
%%
void main()
{
printf("Enter the string of vowels and consonents:");
yylex();
printf("Number of vowels are: %d\n", vcount);
printf("Number of consonants are: %d\n", ccount);
}
int yywrap()
{
return 1;
}


; Step 1. Start
; Step 2. Take the string as input
; Step 3. Take each character from this string to check
; Step 4. If this character is a vowel, increment the count of vowels 
; Step 5. Else increment the count of consonants.
; Step 6. Print the total count of vowels and consonants in the end. 
; Step 7. Stop


; flex prgmname.l
; gcc lex.yy.c
; ./a.out

; Enter the string of vowels and consonents:hello everyone

; Number of vowels are: 6
; Number of consonants are: 7