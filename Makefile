TARGET=christopher_wilson_resume

# check whether pdflatex-makefile submodule is initialized
ifneq ($(wildcard pdflatex-makefile/Makefile.include),)
include pdflatex-makefile/Makefile.include
else
##### begin submodule-initialization targets
.PHONY: all
all:
	@echo Run 'make setup' and then 'make' again.
setup:
	cd "$(shell git rev-parse --show-toplevel)" && git submodule init \
		&& git submodule update
##### end submodule action
endif
