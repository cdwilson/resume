# [Christopher Wilson's Résumé][]

Download [christopher\_wilson\_resume.pdf][]

### Build instructions

This résumé is built using the [moderncv][] class for LaTeX.

[pdflatex-makefile][] is used to typeset the PDF. Just run `make view`
to generate and open the PDF.

The Makefile generates `revision.tex` which defines a new LaTeX command
for the Git short rev:

    \newcommand{\Revision}{760e7d3}

The following is used to add the Git revision to the PDF title metadata:

    \makeatletter
    \AtBeginDocument{
      \include{revision}
      \hypersetup{
        pdftitle = {\@firstname{}~\@lastname{} -- \@title{} -- Rev \Revision},
      }
    }
    \makeatother

  [Christopher Wilson's Résumé]: #
  [christopher\_wilson\_resume.pdf]: https://github.com/cdwilson/resume/raw/gh-pages/christopher_wilson_resume.pdf
  [moderncv]: https://launchpad.net/moderncv
  [pdflatex-makefile]: http://github.com/ransford/pdflatex-makefile
