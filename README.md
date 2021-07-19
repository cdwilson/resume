# [Christopher Wilson's Résumé][]

Download [christopher\_wilson\_resume.pdf][]

### Build instructions

This résumé is built using the [moderncv][] class for LaTeX.  The
[pdflatex-makefile][] project is used to typeset the PDF.  The instructions
below assume macOS with Homebrew or MacPorts installed, but it should be simple
to modify them for other platforms.

First, install the [MacTeX][] distribution via Homebrew:

```bash
brew install --cask mactex-no-gui
```

or alternatively, install the [TeX Live][] distribution via MacPorts:

```bash
sudo port install texlive texlive-latex-extra
```

Next, check out this repository and run the initial setup:

```bash
git clone git@github.com:cdwilson/resume.git
cd resume/
make setup
```

To generate and open the PDF, just run

```bash
make view
```

Note: The make process generates `revision.tex` which defines a new LaTeX
command for the Git short rev:

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
  [MacTeX]: http://www.tug.org/mactex/
  [pdflatex-makefile]: http://github.com/ransford/pdflatex-makefile
