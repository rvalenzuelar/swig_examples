#!/bin/bash

# Compiles and export C module to python 
# using SWIG

swig -python example.i 

# determine python interpreter used
PYINT="$(which python)"

# parse correct include directory
BINDIR=${PYINT: -11} #extract string
INCDIR=/include/python2.7
INCPATH=${PYINT/$BINDIR/$INCDIR}

# compile
gcc -c example.c example_wrap.c "-I$INCPATH" 

# link libraries
OFILES="$(ls *.o)"
ld -shared $OFILES -o _example.so

# remove unncessary files
rm *.o *wrap.c
