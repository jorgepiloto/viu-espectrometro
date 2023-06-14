# Ansys posters for SciPy Conference 2023

This repository contains the source code that builds all posters presented by
the PyAnsys Core Team for SciPyConf'23.

* [Ansys GitHub actions](https://friendly-adventure-n176e9w.pages.github.io/ci_cd.pdf)
* [PyAnsys Metapackage](https://friendly-adventure-n176e9w.pages.github.io/metapackage.pdf)
* [PyAnsys Sphinx Theme and Documentation Poster](https://friendly-adventure-n176e9w.pages.github.io/documentation.pdf)


## Generate your poster

To compile the TeX files into a PDF files, a ``Makefile`` for Linux users and a
``make.bat`` for Windows users are provided. The results are collected inside
the ``out/`` directory.


**For Linux users**

Open a command prompt in that directory and run the following commands:

```console
# To generate PDFs for all TeX files
make all

# To clean the output directory
make clean
```


**For Windows users**

Open a command prompt in that directory and run the following commands:

```console
# To generate PDFs for all TeX files
make.bat all

# To clean the output directory
make.bat clean
```
