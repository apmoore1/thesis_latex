#!/bin/bash

pdflatex -shell-escape -output-directory=./output_directory main.tex
cd output_directory
cp -r ../references .
bibtex main
rm -r ./references
cd ..
pdflatex -shell-escape -output-directory=./output_directory main.tex
pdflatex -shell-escape -output-directory=./output_directory main.tex
cp ./output_directory/main.pdf .
rm -r ./output_directory/main*
rm main-words.sum
