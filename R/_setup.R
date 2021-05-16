library("usethis")
create_package()
proj_activate(getwd())
use_mit_license("Karolyn Ismay")
use_readme_rmd()
use_news_md()
use_test("fizz_buzz")


use_git_config(
  scope = "user",
  user.name = "Karolyn Ismay",
  user.email = "karolyn.ismay@gmail.com"
)

use_git()
use_tidy_github()

use_github(protocol = "ssh")

devtools::document()
use_pipe()

# In Terminal
# brew cask install mactex
# sudo tlmgr update --self
# sudo tlmgr update --all
# sudo tlmgr install titling framed inconsolata
# sudo tlmgr install collection-fontsrecommended

use_pkgdown()
use_github_action("check-standard")
use_github_action("test-coverage")
use_github_action("pkgdown")
