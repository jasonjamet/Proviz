#!/bin/bash
#Compilation C++

bison -d Proviz.ypp
flex Proviz.lex
g++ -c lex.yy.c -o lex.yy.o
g++ -c Proviz.tab.cpp -o Proviz.tab.o
g++ -o Proviz lex.yy.o Proviz.tab.o -lfl
