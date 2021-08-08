#!/bin/bash
docker build -t scc-lancaster/grayscale-latex:$1 --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -f ./grayscale.Dockerfile .
docker run --rm --name grayscale-latex -v "$PWD":/usr/src/app -w /usr/src/app scc-lancaster/grayscale-latex:$1 gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dNOPAUSE -dQUIET -dBATCH -sOutputFile=main_grayscale.pdf main.pdf
