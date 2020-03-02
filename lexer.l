%{
#include <stdio.h>
#include "parser.tab.h"
%}

%%
stop    return STOP;
start   return START;
%%
