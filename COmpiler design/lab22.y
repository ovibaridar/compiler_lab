%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}
%token NUM ADD SUB
%start lab
%left ADD SUB
%%

lab: exp {$$=$1,printf(" = %d\n",$$);};
exp:exp ADD exp {$$=$1+$3;}
	| exp SUB exp {$$=$1-$3;}
	| NUM {$$=$1;};
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
