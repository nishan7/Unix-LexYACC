%option noyywrap
%{
	#include<stdio.h>
	#include "y.tab.h"
%}

%%

[a-zA-Z] {return ALPHA;}
[0-9]+ {return NUMBER;}
[ \t]+ ;
[\n] {return '\n';}
. {return yytext[0];}
%%
