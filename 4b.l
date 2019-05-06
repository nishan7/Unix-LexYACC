%option noyywrap
%{
	#include "y.tab.h"
%}


%%

[aA] {return A;}
[bB] {return B;}
[\n] {return '\n';}
. {return yytext[0];}

%%
