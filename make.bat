@echo off
REM Makefile.bat

REM Declare the source directory
SET SRC_DIR=src

REM Declare the TeX files
SET TEX_FILES=%SRC_DIR%\*.tex

REM Declare the output directory
SET OUT_DIR=out

REM Specify the TeX compiler
SET LATEX_COMPILER=pdflatex

REM Specify any additional flags or options for the compiler
SET LATEX_FLAGS=-output-directory=%OUT_DIR%

if "%1" == "all" goto all
if "%1" == "clean" goto clean

:all
	call :run_make
	goto :eof

:run_make
	mkdir %OUT_DIR%
	FOR %%F IN ("%SRC_DIR%\*.tex") DO (
		"%LATEX_COMPILER%" %LATEX_FLAGS% "%%~dpnxF"
	)
	goto :eof

:clean
	IF EXIST "%OUT_DIR%" rd /s /q "%OUT_DIR%"

REM Phony targets
:PHONY
