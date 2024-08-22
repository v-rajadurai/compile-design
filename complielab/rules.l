%{
// Definitions
%}
%%
case|while|if|do {printf("%s is a keyword\n", yytext);}
[a-z]{2,6}@(gmail|yahoo|skcet)\.(com|in) {printf("%s is a valid email\n", yytext);}
[xyz][a-z]{4} {printf("%s is a variable\n", yytext);}
[467][0-9]{9} {printf("%s is a valid mobile number\n", yytext);}
www\.[a-z]+\.(com|in|us) {printf("%s is a valid domain\n", yytext);}
[a-zA-Z] {printf("%s is an alphabet\n", yytext);}
\n {return 0;}
. {printf("%s is a special character\n", yytext);}

%%

int yywrap() {
    return 0;
}

int main() {
    printf("Enter the lexeme: ");
    yylex();
    return 0;
}
