%option noyywrap
%{
	
	#include "y.tab.h"
%}

%%

[a-zA-Z] {return ALPHA;}
[0-9] {return NUMBER;}
[\n] {return '\n';}
. {return yytext[0];}





%%
