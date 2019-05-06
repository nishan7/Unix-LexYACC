%{
	#include<stdio.h>
	#include<string.h>
	#include<stdlib.h>
	int yyerrror();
%}

%token num name
%left '+' '-'
%left '*' '/'

%% 

st: name '=' expn
| expn  {printf("%d\n", $1);}

expn: num {$$ = $1;}
|expn '+' num {$$ = $1 + $3;}
|expn '-' num {$$ = $1 - $3;}
|expn '*' num {$$ = $1 * $3;}
|expn '/' num { if ($3 == 0){printf("Div by zero\n"); exit(0);}
		else {$$ = $1 / $3;}
	      }
| '('expn')' {$$ = $2;}
;

%%

int main(){
	yyparse();
}

yyerror (char *s){
	printf("%s", s);
}