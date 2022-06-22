# Installation & Troubleshooting

## Setup

This is a tutorial on how to set up your personal computer for use with the `worcs` package. It guides you through the installation of several software packages, and registration on GitHub. This vignette does not assume a prior installation of `R`, so it is suitable for novice users. You only have to perform these steps once for every computer you intend to use `R` and `worcs` on, and the entire process should take approximately 30 minutes if you start from scratch. In case some of the software is already installed on your system, you can skip those related steps.

Follow these steps in order:

1.  Install R from <https://CRAN.R-project.org>\
2.  Install 'RStudio' Desktop (Free) from [rstudio.com](https://rstudio.com/products/rstudio/download/#download)\
3.  Install Git from [git-scm.com](https://git-scm.com/downloads). Use the default, recommended settings. It is especially important to leave these settings selected:
    -   Git from the command line and also from third party software\
        <!--*The `worcs` R-package calls Git from the command line*-->
    -   Use the 'OpenSSL' library\
        <!--*For secure data transfer with GitHub*-->
    -   Checkout Windows-style, commit Unix-style line endings\
        <!--*This is the preferred setting when collaborating with others on different platforms. Be prepared that, on windows, you will receive harmless notifications about LF to CRLF line endings.  *-->
    -   Enable Git Credential Manager\
        <!--*For logging in to GitHub*-->
    -   If you run into any trouble, a more comprehensive tutorial on installing Git is available at [happygitwithr.com](https://happygitwithr.com/install-git.html).\
4.  Register on 'GitHub' (alternatively: see [this vignette](https://cjvanlissa.github.io/worcs/articles/git_cloud.html) on how to use 'GitLab' or 'Bitbucket')
    -   Go to [github.com](https://github.com/) and click *Sign up*. Choose an "Individual", "Free" plan. <!-- + Request a [free academic upgrade](https://help.github.com/en/articles/applying-for-an-educator-or-researcher-discount). This allows you to create *private repositories*, which are only visible to you and selected collaborators, and can be made public when your work is published. -->\
5.  Connect 'RStudio' to Git and GitHub (for more support, see [this 'RStudio' article](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN), and [this blog post](https://www.r-bloggers.com/2015/07/rstudio-and-github/))
    a.  Open 'RStudio', open the Tools menu, click *Global Options*, and click *Git/SVN*
    b.  Verify that *Enable version control interface for RStudio projects* is selected
    c.  Verify that *Git executable:* shows the location of git.exe. If it is missing, manually fix the location of the file.
    d.  Click *Create RSA Key*. Do not enter a passphrase. Press *Create*. A window with some information will open, which you can close.
    e.  Click *View public key*, and copy the entire text to the clipboard.
    f.  Close 'RStudio' (it might offer to restart by itself; this is fine)
    g.  Go to [github.com](https://github.com/)
    h.  Click your user icon, click *Settings*, and then select the *SSH and GPG keys* tab.
    i.  Click *New SSH key*. Give it an arbitrary name (e.g., your computer ID), and paste the public key from your clipboard into the box labeled *Key*.
    j.  Open 'RStudio' again (unless it restarted by itself)\
6.  Install all packages required for WORCS by running the following code in the 'RStudio' console. Be prepared for three contingencies:
    -   If you receive any error saying *There is no package called [package name]*, then run the code `install.packages("package name")`\
    -   If you are prompted to update packages, just press [ENTER] to avoid updating packages. Updating packages this way in an interactive session sometimes leads to errors if the packages are loaded.\
    -   If you see a pop-up dialog asking *Do you want to install from sources the package which needs compilation?*, click *No*.

```{=html}
<!-- -->
```
    install.packages("worcs", dependencies = TRUE)
    tinytex::install_tinytex()
    renv::consent(provided = TRUE)

If you do not have a Git user set up on your computer yet (e.g., if this is the first time you will be using Git), run the following - making sure to substitute your actual username and email:

    worcs::git_user("your_name", "your_email", overwrite = TRUE)

If you intend to write documents in APA style, you should additionally install the `papaja` package. Unfortunately, this package is not yet available on the central R repository CRAN, but you can install it from 'GitHub' using the following code:

    remotes::install_github("crsh/papaja", dependencies = TRUE, update = "never")

Because `papaja` has many dependencies, it is recommended to skip this step if you intend to write documents in a different style than APA.

That's it! Everything should be installed and connected now.

## Test

To check if the installation and setup was successful, we can try going ahead and seeing whether you can *push* and *pull* from GitHub without issue.

This is something we'll do during the workshop as well, but trying it out beforehand allows us to troubleshoot errors .

The sequence of steps is as follows:

1.  Create a test repository on GitHub.

2.  Clone the test repository.

3.  Make local changes.

4.  *Push* the local changes to GitHub. This is where the magic happens (or not)!

5.  If all went well, you can refresh the webpage with your GitHub repository and you'll see your local changes.

6.  Make changes online.

7.  *Pull* the online changes to your computer, so your local repository is up to date.

8.  If all went well, then your online changes are available locally as well. It also means you're fully set up with Git & GitHub!

#### Create a test repository on GitHub

-   Log into GitHub.

-   Click the green *New* (repository) button.

-   You can name your repository as `testrepo`.

-   Make sure it's a Public repository.

-   Click *YES*, when asked if you want to initialize the repository with a README.

-   Click the green *Create repository* button.

-   Copy the SSH URL for cloning via the green *Clone or Download* button.

#### Clone the test repository

Go to your terminal and type the following command, substituting the SSH clone URL you copied in the previous step after `git clone`:


```r
git clone git@github.com:username/testrepo.git
```

This should create a local copy of your repository as a folder with files contained within.

#### Make local changes

Navigate to the folder of your repository and open the README file. Make an edit, such as *This is a line I'm adding offline to my local copy*. Save the file and close it.

#### Push the local changes to GitHub

Go to your terminal and type the following command(s):


```r
git add .
```

This adds all changed files to a 'staging area'.


```r
git commit -m "insert-understandable-message-here"
```

Now you're officially 'committing' the changes you made. You want to add a understandable commit message so you have a clear record of your changes.


```r
git push
```

With this command, you push the local changes and commit message to your repository online.

This is where errors can pop up if the SSH set-up didn't go as smoothly as expected. Troubleshoot the error messages the best you can!

If everything went smoothly, you can refresh the webpage with GitHub repository and you should see that your changes have been synced.

#### Make changes online

Now we want to go the other way around, open your README file on GitHub and make an edit online. You can do this by:

-   Clicking on the README file and the pencil icon to open edit mode.

-   Add a sentence to your README like *This is a line I'm adding from GitHub.com*.

-   When saving, you'll have to provide a meaningful commit message again.

#### Pull from GitHub

Now go to your terminal and type the following command:


```r
git pull
```

If all goes well, you'll see some activity in the terminal which suggests the changes are being downloaded. You can then check out your README file and see whether your online change has been synced.

#### Wrap-Up

Did it work? You did it! You pushed and pulled from GitHub successfully, woohoo!
