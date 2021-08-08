# Empirical Evaluation Methodology for Target Dependent Sentiment Analysis

This repository stores the LaTeX that is used to compile my thesis `Empirical Evaluation Methodology for Target Dependent Sentiment Analysis`.

The thesis can be found in this repository in both colour, and black and white:

* Colour - [main.pdf](./main.pdf)
* Black and White - [main_grayscale.pdf](./main_grayscale.pdf)

## Compile thesis

To compile the thesis it requires Docker, known to work with Docker version 19.03.11, and a linux based machine. This docker images is around **4.81GB** in size, [as it uses the latest tex-live image](https://hub.docker.com/r/texlive/texlive).

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

**NOTE** this creates a docker image called `scc-lancaster/grayscale-latex:0.0.1`, where the `0.0.1` tag has come from the first argument of calling this script. This images is around 80MB in size. Known to work with Docker version 19.03.11, and a linux based machine, and works in a similar way as [compile thesis](#compile-thesis), whereby we will be sharing files between your home machine and docker we set the user on the docker build as the user on your home machine by setting the `uid` and `gid` in the docker image as `id -u` and `id -g`.

``` bash
bash to-grayscale.sh 0.0.1
```

The gray scale PDF output should be found at `main_grayscale.pdf`.

## Remove/uninstall docker images

To remove the docker images from your computer, assuming that you have tagged them with version `0.0.1`:
``` bash
docker rmi scc-lancaster/grayscale-latex:0.0.1
docker rmi scc-lancaster/tex-live:0.0.1
```

## Template

If you like the look of this thesis, it is based off the [Lancaster School of Computing and Communications PhD template](https://github.com/InfoLab21/scc-thesis-template).

## Cite

To be done
