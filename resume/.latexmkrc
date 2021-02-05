#!/usr/bin/env perl

# upLaTeX (dvipdfmx)
$latex     = 'uplatex -kanji=utf8 -synctex=1 -interaction=nonstopmode -shell-escape %O %S';
# $latex     = 'platex -guess-input-enc -synctex=1 -interaction=nonstopmode -shell-escape %O %S'; # pLaTeX (dvipdfmx)
$dvipdf    = 'dvipdfmx -z 0 %O -o %D %S';
$dvips     = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf    = 'ps2pdf %O %S %D';

# pdflatex
$pdflatex  = 'pdflatex %O -synctex=1 -interaction=nonstopmode -file-line-error %S';

# XeLaTeX
$xelatex   = 'xelatex -no-pdf -guess-input-enc -synctex=1 -interaction=nonstopmode -shell-escape %O %S';
$xdvipdfmx = 'xdvipdfmx -z 0 %O -o %D %S';

# LuaLaTeX
$lualatex  = 'lualatex -cmdx -guess-input-enc -synctex=1 -interaction=nonstopmode -shell-escape %O %S';

# bibtex
$bibtex    = 'upbibtex %O %B';
$biber     = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$makeindex = 'upmendex %O -o %D %S';

# recommended to use $pdf_mode = 3 or 4 (for japanese documents)
# $pdf_mode  = 0; # no pdf output
# $pdf_mode  = 1; # $pdflatex
# $pdf_mode  = 2; # $latex + $dvips + $ps2pdf
$pdf_mode  = 3; # $latex + $dvipdf
# $pdf_mode  = 4; # $lualatex
# $pdf_mode  = 5; # $xelatex + $xdvipdfmx
