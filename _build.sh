#!/bin/sh

set -ev

echo "Installing latex packages stolen from yuhui's collection and project specific custom"
tlmgr install infwarerr pdftexcmds unicode-math lm-math a4wide ae algorithms amscls appendix babel-english bbm-macros beamer breakurl caption catoptions charter cite cleveref colortbl comment courier eepic enumitem environ eso-pic eurosym extsizes fancyhdr floatrow fontaxes hardwrap koma-script lastpage lettrine libertine lipsum listings ltxkeys ly1 makecell mathalpha mathpazo mathtools mdframed microtype modes morefloats ms multirow mweights ncntrsbk needspace newtx ntgclass palatino parskip pbox pdflscape pdfpages pgf picinpar polyglossia preprint preview psnfss roboto sectsty setspace siunitx srcltx standalone stmaryrd sttools subfig subfigure symbol tabu textcase threeparttable threeparttablex thumbpdf titlesec translator trimspaces tufte-latex ucs ulem units varwidth vmargin wallpaper wrapfig xargs xstring xwatermark

echo "Running bookdown::pdf_book generation script"
# Rscript -e "bookdown::render_book('index.Rmd', output_format = 'bookdown::gitbook', new_session = FALSE, config_file = '_bookdown.yml', output_dir = '_book/')"
Rscript -e "bookdown::render_book('index.Rmd', output_format = 'bookdown::pdf_book', new_session = FALSE, config_file = '_bookdown.yml', output_dir = '_book/')"
# Rscript -e "bookdown::render_book('index.Rmd', output_format = 'bookdown::epub_book', new_session = FALSE, config_file = '_bookdown.yml', output_dir = '_book/')"

