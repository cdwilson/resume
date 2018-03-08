# [Christopher Wilson's Résumé][]

Download [christopher\_wilson\_resume.pdf][]

### Build instructions

This résumé is built using the [moderncv][] class for LaTeX.  The instructions below assume macOS with MacPorts installed, but it should be simple to modify them for other platforms.

First, install the [TeX Live][] distribution via MacPorts:

```bash
sudo port install texlive texlive-latex-extra
```

[pdflatex-makefile][] is used to typeset the PDF. Just run `make view`
to generate and open the PDF.

Note: The make process generates `revision.tex` which defines a new LaTeX command
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
  [TeX Live]: https://www.tug.org/texlive/
  [pdflatex-makefile]: http://github.com/ransford/pdflatex-makefile
