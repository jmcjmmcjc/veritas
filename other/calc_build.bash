#!/bin/bash

bison -d calc.y
flex calc.l

gcc calc.tab.c lex.yy.c -o calc -lfl -Wall -Werror -Wextra -Wno-unused-function
