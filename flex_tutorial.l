%{

/* Definitions */

%}

%%
[a-z] { printf("Found a lowercase letter: %s \n", yytext); }
[A-Z] { printf("Found an uppercase letter: %s \n", yytext); }
[0-9] { printf("Found a digit: %s \n", yytext); }
. { printf("Found a special character: %s \n", yytext); }
\n {return 0;}
%%

yywrap() {}

int main(int argc, char *argv[]) {
    printf("Enter a string: ");
    yylex();
    return 0;
}