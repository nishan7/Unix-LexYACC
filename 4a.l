%option noyywrap
%{
	#include "y.tab.h"
	extern int yylval;
%}

digit [0-9]
char [_a-zA-Z]
id {char}({char}{digit})*

%%

{digit}+ {yylval = atoi(yytext); return num;}

{id} return name;

[\t ] ;
[\n] return 0;
. return yytext[0];

%%
