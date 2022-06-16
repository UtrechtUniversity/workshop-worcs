bookdown:::bookdown_skeleton(getwd())

bookdown::render_book("index.Rmd")

bookdown::render_book("index.Rmd", "bookdown::gitbook")

