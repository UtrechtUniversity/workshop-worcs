# Phase 3: Submission & Publication {#phase-3}

13. <!--S: Use dependency management to make the computational environment fully reproducible-->**Use dependency management to make the computational environment fully reproducible.** When using `renv`, you can save the state of the project library (all packages used) by calling `renv::snapshot()`. This updates the lockfile, `renv.lock`.

14. <!--S: Optional: Add a WORCS-badge to your project's README file-->**Optional:** Add a WORCS-badge to your project's README file and complete the optional elements of the WORCS checklist to qualify for a "Perfect" rating. Run the `check_worcs()` function to see whether your project adheres to the WORCS checklist (see `worcs::checklist`)
    + This adds a WORCS-badge to your 'README.md' file, with a rank of "Fail", "Limited", or "Open".
    + Reference the WORCS checklist and your paper's score in the paper.
    + **Optional:** Complete the additional optional items in the WORCS checklist by hand, and get a "Perfect" rating.

15. <!--S: Make a Private 'Git' remote repository Public-->**Make the 'Git' remote repository "Public" if it was set to "Private"**
    + Instructions for 'GitHub': 
        - Go to your project's repository
        - Click the "Settings" button
        - Scroll to the bottom of the page; click "Make public", and follow the on-screen instructions

16. <!--S: [Create a project page on the Open Science Framework (OSF)](https://help.osf.io/hc/en-us/articles/360019737594-Create-a-Project) and [connect it to the 'Git' remote repository](https://help.osf.io/hc/en-us/articles/360019929813-Connect-GitHub-to-a-Project)-->
**[Create a project on the Open Science Framework (OSF)](https://help.osf.io/hc/en-us/articles/360019737594-Create-a-Project) and [connect it to the 'Git' remote repository](https://help.osf.io/hc/en-us/articles/360019929813-Connect-GitHub-to-a-Project).**
    + On the OSF project page, you can select a License for the project. This helps clearly communicate the terms of reusability of your project. Make sure to use the same License you selected during project creation in Step 3.

17. <!--S: [Generate a Digital Object Identifier (DOI) for the OSF project](https://help.osf.io/hc/en-us/articles/360019931013-Create-DOIs)-->
**[Generate a Digital Object Identifier (DOI) for the OSF project](https://help.osf.io/hc/en-us/articles/360019931013-Create-DOIs)**
    + A DOI is a persistent identifier that can be used to link to your project page.
    + You may have already created a project page under Step 5 if you preregistered on the OSF
    + Optionally, you can [generate additional DOIs for specific resources like datasets](https://help.osf.io/hc/en-us/articles/360019931173-Sharing-data).
    + Alternatively, you can [connect your 'Git' remote repository to Zenodo](https://guides.github.com/activities/citable-code/), instead of the OSF, to create DOIs for the project and specific resources.

18. <!--S: Add an open science statement to the Abstract or Author notes, which links to the 'OSF' project page and/or the 'Git' remote repository-->**Add an open science statement to the Abstract or Author notes, which links to the 'OSF' project page and/or the 'Git' remote repository.** 
    + Placing this statement in the Abstract or Author note means that readers can find your project even if the paper is published behind a paywall.
    + The link can be masked for blind review.
    + The open science statement should indicate which resources are available in the online repository; data, code, materials, study design details, a pre-registration, and/or comprehensive citations. For further guidance, see @aalbersbergMakingScienceTransparent2018. Example:  
    _In the spirit of open science, an online repository is available at XXX,
    which contains [the data/a synthetic data file], analysis code, the research
    materials used, details about the study design, more comprehensive citations,
    and a tagged release with the preregistration._

19. <!--S: Render the dynamic document to PDF-->**Knit the paper to PDF for submission**
    + In 'RStudio', with the file 'manuscript.Rmd' open, click the "Knit" button above the top left panel
    + To retain essential citations only, change the front matter of the 'manuscript.Rmd' file:  
    Change `knit: worcs::cite_all` to `knit: worcs::cite_essential`

20. <!--S: Optional: [Publish the PDF as a preprint, and add it to the OSF project](https://help.osf.io/hc/en-us/articles/360019930533-Upload-a-Preprint)-->**Optional:** [Publish preprint in a not-for-profit preprint repository such as PsyArchiv, and connect it to your existing OSF project](https://help.osf.io/hc/en-us/articles/360019930533-Upload-a-Preprint)
    + Check [Sherpa Romeo](http://sherpa.ac.uk/romeo/index.php) to be sure that your intended outlet allows the publication of preprints; many journals do, nowadays - and if they do not, it is worth considering other outlets.

21. <!--S: Submit the paper, and [tag the commit of the submitted paper as a release](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository) of the submitted paper as a release, as in Step 4.-->**Submit the paper, and [tag the commit of the submitted paper as a release](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository), as in Step 4.**
