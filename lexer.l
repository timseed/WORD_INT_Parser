%option noyywrap yylineno
%{
#include <stdio.h>
#include <string.h>
#include "parser.tab.h"
%}

%%

[ \t]+          {return SPACE;}/* ignore whitespace */
[0-9]+          { yylval.ival= atoi(yytext); return INTEGER; }
[a-zA-Z]+       { strcpy(yylval.name,yytext); return WORD; }
[\n]            {};
%%
