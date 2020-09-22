#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', output_format = 'bookdown::gitbook', new_session = FALSE, config_file = '_bookdown.yml')"
Rscript -e "bookdown::render_book('index.Rmd', output_format = 'bookdown::pdf_book', new_session = FALSE, config_file = '_bookdown.yml')"
Rscript -e "bookdown::render_book('index.Rmd', output_format = 'bookdown::epub_book', new_session = FALSE, config_file = '_bookdown.yml')"
