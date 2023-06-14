# Makefile

# Declare the source directory
SRC_DIR = src

# Declare the TeX files
TEX_FILES = $(wildcard $(SRC_DIR)/*.tex)

# Declare the output directory
OUT_DIR = out

# Specify the TeX compiler
LATEX_COMPILER = pdflatex

# Specify any additional flags or options for the compiler
LATEX_FLAGS = -output-directory=$(OUT_DIR)

# Rule to generate the PDF output
$(OUT_DIR)/%.pdf: $(SRC_DIR)/%.tex
	mkdir -p $(OUT_DIR)
	$(LATEX_COMPILER) $(LATEX_FLAGS) $<
	convert -density 150 -scene 1 $@ $(@:.pdf=.png)

# Generate PDF for each TeX file
all: $(patsubst $(SRC_DIR)/%.tex, $(OUT_DIR)/%.pdf, $(TEX_FILES))

# Clean the output directory
clean:
	rm -rf $(OUT_DIR)

# Phony targets
.PHONY: all clean

