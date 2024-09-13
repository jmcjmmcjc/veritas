#!/bin/bash

flex flex_tutorial.l

gcc lex.yy.c -Wall -Werror -Wextra -Wno-unused-function
