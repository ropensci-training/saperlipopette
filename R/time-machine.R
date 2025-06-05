#' "Oh shit, I did something terribly wrong, please tell me git has a magic time machine!?!"
#'
#' @description
#' To go with <https://ohshitgit.com/#magic-time-machine>
#'
#'
#' @inheritParams exo_one_small_change
#' @section Git commands:
#' `git reset`, `git reflog`
#'
#' @return The path to the new project
#' @export
#'
#' @examplesIf interactive()
#' parent_path <- withr::local_tempdir()
#' path <- exo_time_machine(parent_path = parent_path)
exo_time_machine <- function(parent_path) {
  path <- file.path(parent_path, "time-machine")

  withr::local_options(usethis.quiet = TRUE)

  dir_create(path)
  original_dir <- getwd()

  withr::local_dir(path)
  gert::git_init()

  create_r_profile("time_machine")

  create_project(path = getwd())
  # Ignore Rproj that might otherwise get edited when we open the project
  rproj <- fs::dir_ls(glob = "*.Rproj")
  usethis::local_project(getwd(), force = TRUE)
  usethis::use_git_ignore(rproj)
  usethis::use_git_ignore(".Rprofile")
  gert::git_add("*")
  first <- git_commit(tr_("First commit"))

  fs::file_create("bla")
  brio::write_lines(
    text = c(tr_("thing 1"), tr_("thing 2")),
    path = "bla"
  )
  gert::git_add("bla")
  git_commit(tr_("feat: add bla"))
  gert::git_reset_hard(first)

  usethis::local_project(original_dir, force = TRUE)

  cli::cli_alert_info(tr_("Follow along in {path}!"))

  return(path)
}
