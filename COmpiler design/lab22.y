%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}
%token NUM ADD
%start lab
%left ADD
%%

lab: NUM ADD NUM {$$=$1+$2,printf("%d + %d = %d\n",$1,$2,$$);};
%%
int main()
{
yyparse();
printf("Parsing Finished");
}
void yyerror(char *s)
{
fprintf(stderr,"error: %s",s);
}