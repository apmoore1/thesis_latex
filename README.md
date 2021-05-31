# Empirical Evaluation Methodology for Target Dependent Sentiment Analysis

This repository stores the LaTeX that is used to compile my thesis `Empirical Evaluation Methodology for Target Dependent Sentiment Analysis`.

The thesis can be found in this repository in both colour and black and white:

* Colour - [main.pdf](./main.pdf)
* Black and White - [main_grayscale.pdf](./main_grayscale.pdf)

## Compile thesis

To compile the thesis it requires Docker, known to work with Docker version 19.03.11, and a linux based machine.

First you need to build the docker image:

``` bash
bash linux-docker-build.sh 0.0.1
```

This creates a docker image called `scc-lancaster/tex-live:0.0.1`. **NOTE** as we will be sharing files between your home machine and docker we set the user on the docker build as the user on your home machine by setting the `uid` and `gid` in the docker image as `id -u` and `id -g`.

Once the docker image is built you can just compile the LaTeX using the following command:

``` bash
bash docker-compile.sh
```

The PDF output should be found at `main.pdf`.


## Convert PDF to Gray Scale



``` bash
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dNOPAUSE -dQUIET -dBATCH -sOutputFile=main_grayscale.pdf main.pdf
```

## Template

If you like the look of this thesis, it is based off the [Lancaster School of Computing and Communications PhD template](https://github.com/InfoLab21/scc-thesis-template).

## Cite

To be done
