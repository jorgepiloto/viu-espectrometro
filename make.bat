REM make.bat

REM Set the source directory
SET SRC_DIR=src

REM Find TeX files
FOR /R "%SRC_DIR%" %%F IN (*.tex) DO (
    SET "TEX_FILES=!TEX_FILES! "%%F""
)

REM Set the output directory
SET OUT_DIR=out

REM Set the TeX compiler
SET LATEX_COMPILER=pdflatex

REM Set any additional flags or options for the compiler
SET LATEX_FLAGS=-output-directory=%OUT_DIR%

REM Rule to generate the PDF output
"%OUT_DIR%/%~n1.pdf" : "%SRC_DIR%/%~n1.tex"
    mkdir "%OUT_DIR%"
    %LATEX_COMPILER% %LATEX_FLAGS% "%%~F"

REM Generate PDF for each TeX file
all: %TEX_FILES:~1%
    EXIT /B

REM Clean the output directory
clean:
    rmdir /S /Q "%OUT_DIR%"

REM Phony targets
.PHONY: all clean
