#include <stdio.h> 
#include<string.h> 
char input[10]; int i=0,error=0; void E();
void T();
void Eprime();
void Tprime();
void F();
void main()

{
    printf("Enter an arithmetic expression :\n");
    gets(input);
    E();
    if (strlen(input) == i && error == 0)
        printf("\nAccepted..!!!");
    else
    ;
}

void E()
{
    T();
    Eprime();
}

void Eprime()
{
    if (input[i] == '+')
    {
        i++;
        T();
        Eprime();
    }
}

void T()
{
    F();
    Tprime();
}

void Tprime()
{
    if (input[i] == '*')
    {
        i++;
        F();
        Tprime();
    }
}

void F()
{
    if (input[i] == '(')
    {
        i++;
        E();
        if (input[i] == ')')
            i++;
    }
    else if (isalpha(input[i]))
    {
        i++;
        while (isalnum(input[i]) || input[i] == '_')
            i++;
    }
    else
        error = 1;
}


// Enter an arithmetic expression :
// sum+month*intrest


// ALGORITHM:
// Step 1: start.
// Step 2: Declare the prototype functions E() , Eprime (),T(), Tprime (),F() Step 3: Read the string to be parsed.
// Step 4: Check the productions
// Step 5: Compare the terminals and Non-terminals Step 6: Read the parse string.
// Step 7: stop the production