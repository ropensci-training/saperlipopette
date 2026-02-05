#' "Oh shit, I accidentally committed something to main that should have been on a brand new branch!"
#'
#' @description
#' To go with <https://ohshitgit.com/#accidental-commit-master>
#'
#'
#' @inheritParams exo_one_small_change
#' @section Git commands:
#' `git reset --hard`, `git branch`, `git switch`, `git checkout`
#'
#' @return The path to the new project
#' @export
#'
#' @examplesIf interactive()
#' parent_path <- withr::local_tempdir()
#' path <- exo_committed_to_main(parent_path = parent_path)
exo_committed_to_main <- function(parent_path) {
  path <- file.path(parent_path, "committed-to-main")

  withr::local_options(usethis.quiet = TRUE)

  dir_create(path)
  original_dir <- getwd()

  withr::local_dir(path)
  gert::git_init()

  create_r_profile("committed_to_main")

  create_project(path = getwd())
  # Ignore Rproj that might otherwise get edited when we open the project
  rproj <- fs::dir_ls(glob = "*.Rproj")
  usethis::local_project(getwd(), force = TRUE)
  usethis::use_git_ignore(rproj)
  usethis::use_git_ignore(".Rprofile")
  gert::git_add("*")
  git_commit(tr_("First commit"))

  fs::file_create("bla")
  brio::write_lines(
    text = c(tr_("thing 1"), tr_("thing 2")),
    path = "bla"
  )
  gert::git_add("bla")
  git_commit(tr_("feat: add bla"))

  usethis::local_project(original_dir, force = TRUE)

  cli::cli_alert_info(tr_("Follow along in {path}!"))

  return(path)
}
