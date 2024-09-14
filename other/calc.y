%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
%}

/* Define tokens */
%token NUMBER
%left '+' '-'
%left '*' '/'

%%

/* Rules */
calculation:
               expression '\n'   { printf("Result: %d\n", $1); }
  ;

expression:
              expression '+' expression   { $$ = $1 + $3; }
  | expression '-' expression   { $$ = $1 - $3; }
  | expression '*' expression   { $$ = $1 * $3; }
  | expression '/' expression   { $$ = $1 / $3; }
  | '(' expression ')'          { $$ = $2; }
  | NUMBER                      { $$ = $1; }
  ;

%%

/* Handle errors */
void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
    printf("Enter a mathematical expression: \n");
    yyparse();
    return 0;
}
