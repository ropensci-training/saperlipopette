#' "I want to find who added a specific line!"
#'
#' @description
#' I want to find who added the line `x <- x + 1` to the script and when.
#' The tool for that is `git blame path/to/file`.
#'
#'
#' @inheritParams exo_one_small_change
#' @git blame
#'
#' @return The path to the new project
#' @export
#'
#' @examplesIf interactive()
#' parent_path <- withr::local_tempdir()
#' path <- exo_blame(parent_path = parent_path)
exo_blame <- function(parent_path) {
  path <- file.path(parent_path, "blame")

  withr::local_options(usethis.quiet = TRUE)

  dir_create(path)
  original_dir <- getwd()

  withr::local_dir(path)
  gert::git_init()

  create_r_profile("blame")

  create_project(path = getwd())
  # Ignore Rproj that might otherwise get edited when we open the project
  rproj <- fs::dir_ls(glob = "*.Rproj")
  usethis::local_project(getwd(), force = TRUE)
  usethis::use_git_ignore(rproj)
  usethis::use_git_ignore(".Rprofile")
  gert::git_add("*")
  git_commit(tr_("First commit"))

  new_script <- file.path("R", "script.R")
  fs::file_create(new_script)

  brio::write_lines(text = c("a <- 1", "b <- 2"), path = new_script)
  gert::git_add(new_script)
  git_jekyll_commit(tr_("feat: add script"), "2024-01-05 09:00:00Z")

  brio::write_lines(
    text = c("a <- 1", "b <- 2", "x <- x + 1"),
    path = new_script
  )
  gert::git_add(new_script)
  git_hyde_commit(tr_("feat: edit script"), "2024-01-06 23:00:00Z")

  brio::write_lines(
    text = c("a <- 1", "b <- 2", "x <- x + 1", "c <- 3"),
    path = new_script
  )
  gert::git_add(new_script)
  git_jekyll_commit(tr_("feat: improve script"), "2024-01-08 10:00:00Z")

  brio::write_lines(
    text = c("a <- 1", "b <- 20", "x <- x + 1", "c <- 3"),
    path = new_script
  )
  gert::git_add(new_script)
  git_hyde_commit(tr_("feat: amend script"), "2024-01-09 22:00:00Z")

  brio::write_lines(
    text = c("a <- 10", "b <- 20", "x <- x + 1", "c <- 3"),
    path = new_script
  )
  gert::git_add(new_script)
  git_jekyll_commit(tr_("feat: edit script"), "2024-01-10 11:00:00Z")

  usethis::local_project(original_dir, force = TRUE)

  cli::cli_alert_info(tr_("Follow along in {path}!"))

  path
}
