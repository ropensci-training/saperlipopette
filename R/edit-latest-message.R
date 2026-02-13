#' "Oh shit, I need to change the message on my last commit!"
#'
#' @description
#' To go with <https://ohshitgit.com/#change-last-commit-message>
#'
#'
#' @inheritParams exo_one_small_change
#'
#' @git amend
#'
#' @return The path
#' @export
#'
#' @examplesIf interactive()
#' parent_path <- withr::local_tempdir()
#' path <- exo_latest_message(parent_path = parent_path)
exo_latest_message <- function(parent_path) {
  path <- file.path(parent_path, "latest-message")

  withr::local_options(usethis.quiet = TRUE)

  dir_create(path)
  original_dir <- getwd()

  withr::local_dir(path)
  gert::git_init()

  create_r_profile("latest_message")

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
  git_commit(tr_("add a new documennnt"))

  usethis::local_project(original_dir, force = TRUE)

  cli::cli_alert_info(tr_("Follow along in {path}!"))

  return(path)
}
