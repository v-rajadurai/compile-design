%{
//definitions
%}

%%
break|for|case|while|if|do {printf("%s is a keyword",yytext);}
[a-z]{2,6}+@(gamil|yahoo|skcet)\.com {printf("%s is a keyword",yytext);}
\n {return 0;}
. {printf("invalid\n");}

%%


int yywrap(){return 0;}



int main()
{
	printf("enter the lexeme:");
	yylex();
	return 0;
}
