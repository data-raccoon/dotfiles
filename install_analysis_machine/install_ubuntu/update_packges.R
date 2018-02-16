# normal packages --------------------------------------------------------------
# http://neondataskills.org/R/Packages-In-R/
update.packages()


# github packages --------------------------------------------------------------
# https://stackoverflow.com/questions/32538052/update-all-packages-from-github
library(devtools)

#' Update all github installed packages.
#'
#' This will trash any non-master branch installs, and spend time re-installing
#' packages which are already up-to-date.
update_github <- function() {
  pkgs = loadedNamespaces()
  print(pkgs)
  desc <- lapply(pkgs, packageDescription, lib.loc = NULL)
  for (d in desc) {
    message("working on ", d$Package)
    if (!is.null(d$GithubSHA1)) {
      message("Github found")
      install_github(repo = d$GithubRepo, username = d$GithubUsername)
    }
  }
}

update_github()
