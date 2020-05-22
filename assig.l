%{

%}


%%

("("|")"|"{"|"}"|"["|"]"|"|"|"|"|"%d"|",") {printf("");}
("int"|"double"|"float"|"char"|"void"|"else"|"if"|"int"|"return"|"for"|"while") {printf("\n %s :is a Keyword",yytext);}

("main"|"printf"|"scanf") {printf("\n %s :is a build in function",yytext);}


("*"|"/"|"+"|"-"|"=")		{printf("\n %s  :is an Operator",yytext);}

("=="|"!="|">"|"<"|"<="|">=")  {printf("\n %s   :is a Relational Operator",yytext);}

(([a-z]|[A-Z])+[a-z|A-Z|0-9]*) { printf("\n %s  :is an Identifier",yytext);}


([0-9]+("."[0-9]+)*) {printf("\n %s :is a Constant",yytext);}

. {printf("");}


%%
int yywrap()
{   
}

int main()
{
   
    yyin=fopen("example.txt","r");
   
    yylex();
    printf("\n");
    return 0;
}

