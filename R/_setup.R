# added `R/_setup.R` to ".Rbuildignore" file so that it doesn't build when the
# package builds

# completed: update DESCRIPTION fields

library("usethis")
create_package()
proj_activate(getwd())
use_mit_license("Karolyn Ismay")
use_readme_rmd()
use_news_md()
use_test("fizz_buzz")

create_github_token()

# get PAT token from github
library(gitcreds)
gitcreds_set()

use_git_config(
  scope = "user",
  user.name = "Karolyn Ismay",
  user.email = "karolyn.ismay@gmail.com"
)

use_git()
use_github(protocol = "https")
use_tidy_github()

# Run this at the end:
devtools::document()

# In Terminal

# for building pdfs:
# brew install --cask mactex

# tlmgr is the latex package manager, best practices to make sure tlmgr is
# up to date. Restart RStudio session and then run:
# sudo tlmgr update --self
# sudo tlmgr update --all

# installing fonts for pkgdown:
# sudo tlmgr install titling framed inconsolata
# sudo tlmgr install collection-fontsrecommended

# All done with Terminal stuff!

use_pkgdown()
use_github_action("check-standard")
use_github_action("test-coverage")
use_github_action("pkgdown")
