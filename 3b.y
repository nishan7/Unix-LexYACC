%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token  ALPHA NUMBER

%% 

stmt: ALPHA var '\n' {
	printf("Valid identifier\n");
	exit(0);
}



var : ALPHA var
    | NUMBER var
    |
    ;


%%

int main(){
	printf("Enter the identifier \n");
	yyparse();
	exit(0);
}

yyerror(){
	printf("Invalid Identifier");
	exit(0);
}