# Phase 2: Writing & Analysis {-}

8. <!--S: Create an executable script documenting the code required to load the raw data into a tabular format, and de-identify human subjects if applicable-->**Create an executable script documenting the code required to load the raw data into a tabular format, and de-identify human subjects if applicable**
    + Document this preprocessing ("data wrangling") procedure in the `prepare_data.R` file.
    + This file is intended to document steps that can not or should not be replicated by end users, unless they have access to the raw data file.
    + These are steps you would run only once, the first time you load data into R.
    + Make this file as short as possible; only include steps that are absolutely necessary

9. <!--S: Save the data into a plain-text tabular format like `.csv`. When using open data, commit this file to 'Git'. When using closed data, commit a checksum of the file, and a synthetic copy of the data.-->**Save the data using `open_data()` or `closed_data()`**
    + <font colour = "red">__WARNING:__ Once you commit a data file to the 'Git' repository, its record will be retained forever (unless the entire repository is deleted). Assume that pushing data to a 'Git' remote repository cannot be undone. Follow the mantra: "Never commit something you do not intend to share".</font>
    + When using external data sources (e.g., obtained using an API), it is recommended to store a local copy, to make the project portable and to ensure that end users have access to the same version of the data you used.
    + NOTE: The `open_data()` and `closed_data()` functions generate a codebook and possibly additional files as part of their output, don't worry about all the new files added to your project. 

10. <!--S: Write the manuscript using a dynamic document generation format, with code chunks to perform the analyses.-->**Write the manuscript in `Manuscript.Rmd`**
    + Use code chunks to perform the analyses. The first code chunk should call `load_data()`
    + Finish each sentence with one carriage return (enter); separate paragraphs with a double carriage return.

11. <!--S: Commit every small change to the 'Git' repository-->**Regularly Commit your progress to the Git repository; ideally, after completing each small and clearly defined task.**
    + In the top-right panel of 'RStudio', select the 'Git' tab
    + Select the checkboxes next to all files whose changes you wish to Commit
    + Click the Commit button.
    + In the pop-up window, write an informative "Commit message".
    + Click the Commit button below the message dialog
    + Click the green arrow labeled "Push" to send your commit to the remote repository

12. <!--S: Use comprehensive citation-->**While writing, cite essential references with one at-symbol, `[@essentialref2020]`, and non-essential references with a double at-symbol, `[@@nonessential2020]`.**

When writing in `RMarkdown` format, you use Markdown `citekey`s to refer to references, and these references will be stored in a separate text file known as a `.bib` file.

To ease this process, we recommend following this procedure for citation:

  a. During writing, maintain a plain-text `.bib` file with the BibTeX references
for all citations.
    + You can export a `.bib` file from most reference manager
    programs; the free, open-source reference manager
    [Zotero](https://www.zotero.org/download/) is excellent and user-friendly,
    and highly interoperable with other commercial reference managers. [Here](https://christopherjunk.netlify.com/blog/2019/02/25/zotero-RMarkdown/) is a tutorial for using Zotero with RMarkdown.
    + Alternatively, it is possible to make this file by hand, copy and pasting
    each new reference below
    the previous one; e.g., Figure \@ref(fig:scholarbib) shows how to obtain a
    BibTeX reference from Google Scholar; simply copy-paste each reference into
    the `.bib` file

  b. To cite a reference, use the `citekey` - the first word in the BibTeX entry
for that reference. Insert it in the RMarkdown file like so: `@yourcitekey2020`.
For a parenthesized reference, use `[@citekeyone2020; @citekeytwo2020]`. For
more options, see the [RMarkdown cookbook](https://bookdown.org/yihui/rmarkdown-cookbook/bibliography.html).

  c. To indicate a *non-essential* citation, mark it with a double at-symbol: `@@nonessential2020`.

  d. When Knitting the document, adapt the `knit` command in the YAML header.  
  `knit: worcs::cite_all` renders all citations, and  
  `knit: worcs::cite_essential` removes all *non-essential* citations.

 e. Optional: To be extremely thorough, you could make a "branch" of the GitHub repository for the print version of the manuscript. Only in this branch, you use the function `knit: worcs::cite_essential`. The procedure is documented in [this tutorial](http://rstudio-pubs-static.s3.amazonaws.com/142364_3b344a38149b465c8ebc9a8cd2eee3aa.html).

