# Ansys posters for SciPy Conference 2023

This repository contains the source code that builds all posters presented by
the PyAnsys Core Team for [SciPyConf'23](https://www.scipy2023.scipy.org/).

* [Ansys GitHub actions](https://scipy2023.pyansys.com/ci_cd.pdf)
* [PyAnsys Metapackage](https://scipy2023.pyansys.com/metapackage.pdf)
* [Ansys Sphinx Theme and Documentation](https://scipy2023.pyansys.com/documentation.pdf)


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
