%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}
%token NUM IDS equal semicolon SUB ADD MUL DIV LP RP LB RB GR LS  IF INT FLOAT DOT FOR
%start lab
%%

lab: feq feq feq statments lb feq lb;

datatype: FLOAT | INT;

lb: LP | RP | LB | RB | GR | LS ;

eq:SUB | ADD | MUL | DIV;

feq: datatype exp equal exp semicolon | datatype exp equal eq exp semicolon |exp equal number semicolon | datatype IDS semicolon | exp equal exp semicolon;

exp: value | IDS;
statments: IF lb exp lb exp lb | FOR lb IDS equal value semicolon exp lb exp semicolon IDS eq eq lb ;

value: NUM | NUM DOT NUM ;

number: exp eq exp ;

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