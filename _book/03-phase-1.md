# Phase 1: Study Design {#phase-1}

**Notes for cautious researchers**

<!--S: Some researchers might want to share their work only once the paper is accepted for publication. In this case, we recommend creating a "Private" repository in Step 1, and completing Steps 14-19 upon acceptance.-->Some researchers might want to share their work only once the paper is accepted for publication. In this case, we recommend creating a "Private" repository in Step 1, and completing Steps 13-18 in Phase 3 upon acceptance by the journal.

1. <!--S: Create a (Public or Private) remote repository on a 'Git' hosting service-->**Create a new remote repository on a 'Git' hosting service, such as ["GitHub"](https://github.com)**
    + For inexperienced users, we recommend making this repository "Private", which means only you and selected co-authors can access it. You can set it to "Public" later - for example, when the paper goes to print - and the entire history of the Repository will be public record. We recommend making the repository "Public" from the start __only if__ you are an experienced user and know what you are doing.
    + Copy the repository's SSH link to clipboard; this link should look something like `git@github.com:username/repository.git`

2. <!--S: When using R, initialize a new RStudio project using the WORCS template. Otherwise, clone the remote repository to your local project folder.-->**In Rstudio, click File > New Project > New directory > WORCS Project Template**
    a. Paste the remote Repository address in the textbox. This address should look like `git@github.com:username/repository.git`
    b. Keep the checkbox for `renv` checked if you want to use dependency management (recommended)
    c. Select a preregistration template, or add a preregistration later using `add_preregistration()`
    d. Select a manuscript template, or add a manuscript later using `add_manuscript()`
    e. Select a license for your project (we recommend a CC-BY license, which allows free use of the licensed material as long as the creator is credited)

3. <!--S: Add a README.md file, explaining how users should interact with the project, and a LICENSE to explain users' rights and limit your liability. This is automated by the `worcs` package.-->A template README.md file will be automatically generated during project creation. **Edit this template to explain how users should interact with the project**. Based on your selections in the New Project dialog, a LICENSE will also be added to the project, to explain users' rights and limit your liability. We recommend a CC-BY license, which allows free use of the licensed material as long as the creator is credited.

4. <!--S: Push the local project folder to the remote repository on GitHub-->**For this workshop, we will already do a round of committing and pushing local changes to GitHub before proceeding further.**
    a. Click the "Git" tab in the upper right pane
    b. Check the 'Staged' box for all the files
    c. If you're not already in the Git pop-up window, click 'Commit'
    d. Type a simple, but meaningful message in the "Commit message" box such as _initial commit with WORCS project structure_
    + Click the 'Push' button (with the green upwards arrow) to upload your changes to GitHub. Note that you might be prompted to enter your GitHub username and password
    + Go to the project repository on GitHub and refresh the page, the local changes should now be visible online. You should see all the files you staged and the commit message you provided will be noted in the history of the repository.

5. <!--S: Optional: Preregister your analysis by committing a plain-text preregistration and [tag this commit](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository) with the label "preregistration".-->**Optional:** Preregister your analysis by committing a plain-text preregistration and [tag this commit](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository) with the label "preregistration":
    + Document study plans in a `preregistration.Rmd` file, and optionally, planned analyses in a `.R` file.
    + In the top-right panel of 'RStudio', select the 'Git' tab
    + Select the checkbox next to the preregistration file(s)
    + Click the Commit button.
    + In the pop-up window, write an informative "Commit message", e.g., "Preregistration"
    + Click the Commit button below the message dialog
    + Click the green arrow labeled "Push" to send your commit to the 'Git' remote repository
    + [Tag this commit as a release](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository) on the remote repository, using the label "preregistration". A tagged release helps others retrieve this commit.
    + Instructions for 'GitHub' [are explained here ](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository)
<!--        - Go to the 'GitHub' page for your project
        - Click the label that says "0 releases"
        - Click the button labeled "Create new release"
        - In the textbox labeled "Tag version" and the textbox "Release title", write: "Preregistration"
        - Click the green button labeled "Publish release"-->

6. <!--S: Optional: Upload the preregistration to a dedicated preregistration server-->**Optional:** Render the preregistration to PDF, and upload it as an attachment to a dedicated preregistration server like AsPredicted.org or OSF.io
    + In 'RStudio', with the file 'preregistration.Rmd' open, click the "Knit" button above the top left panel
    + When the PDF is generated, go to one of the recognized preregistration services' websites, create a new preregistration, and upload it as an attachment.
    + Optional: Generate a DOI for the preregistration through [the OSF](https://help.osf.io/hc/en-us/articles/360019931173-Sharing-data) or a service like [Zenodo](https://guides.github.com/activities/citable-code/)

7. <!--S: Optional: Add study materials to the repository-->**Optional:** Add study materials to the repository.
    + Only do this for study materials to which you own the rights, or when the materials' license allows it
    + You can solicit feedback and outside contributions on a 'Git' remote repository by opening an "Issue" or by accepting "Pull requests"
