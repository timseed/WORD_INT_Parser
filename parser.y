%{
#include <stdio.h>
extern int yylex();
extern FILE* yyin;
void yyerror(const char *s);
/* yydebug=1; */
%}
%union {
        int ival;
        char name[100];
}

%token INTEGER
%token WORD
%token SPACE
%type <ival>INTEGER 
%type <name>WORD 
%%

input: /* empty */
    | line input
    ;

line: expression  { /* printf("parsed\n"); */ }
    ;

expression: INTEGER { printf("INT %d\n",$1); }
          | WORD { printf("WORD %s\n",$1); }
          | SPACE {};
          ;

%%

void yyerror(const char *s) {
    printf("Error: %s\n", s);
}

int main() {
    yyin = stdin;
    yyparse();
    return 0;
}

