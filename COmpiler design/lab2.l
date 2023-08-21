%option noyywrap
%{
#include"lab22.tab.h"
%}
digit [0-9]
num {digit}+
letter [a-zA-Z]
id {letter}+
%%
{num} {yylval=atoi(yytext);return(NUM);}
"+" {return(ADD);}
"-" {return(SUB);}

%%
