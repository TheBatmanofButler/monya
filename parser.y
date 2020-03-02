%{
#include <stdio.h>
#include <string.h>
 
void yyerror(const char *str)
{
        fprintf(stderr,"error: %s\n",str);
}
 
int yywrap()
{
        return 1;
} 
  
int main()
{
        yyparse();
} 

%}

%token START STOP

%%

commands:
        | commands command
        ;

command:
       start
       |
       stop
       ;

start:
     START
     {
         printf("starttt\n");
     }
     ;

stop:
    STOP
    {
        printf("stoppp\n");
    }
    ;
