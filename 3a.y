%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token NUMBER ALPHA
%left '+' '-'
%left '*' '/'



%% 

gram: expr '\n' {
	printf("Exp is valid\n");
	exit(0);
}

expr: '+'expr
	| '-' expr
	| expr '+' expr
	| expr '-' expr
	| expr '*' expr
	| expr '/' expr
	| '(' expr ')'
	| NUMBER | ALPHA
	;

%%

int main(){
	printf("Enter arithmetic exp\n");
	yyparse();
	return 0;
}


yyerror(){
	printf("arithmetic exp invalid \n");
	exit(0);
}