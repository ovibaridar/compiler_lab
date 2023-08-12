%option noyywrap
%{
#include"lab.tab.h"
%}
digit [0-9]
num {digit}+
letter [a-zA-Z]
id {letter}+
%%
"if" {return(IF);}
"for" {return(FOR);}
"int" {return(INT);}
"float" {return(FLOAT);}
{num} {return(NUM);}
{id} {return(IDS);}
"=" {return(equal);}
";" {return(semicolon);}
"-" {return(SUB);}
"(" {return(LP);}
")" {return(RP);}
"{" {return(LB);}
"" {}
"." {return(DOT);}
"}" {return(RB);}
">" {return(GR);}
"<" {return(LS);}
"+" {return(ADD);}
"*" {return(MUL);}
"/" {return(DIV);}
%%