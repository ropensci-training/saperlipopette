#' "I want to find which commit deleted a file!"
#'
#' @description
#' I want to find which commit deleted script.R.
#' The tool for that is `git log --oneline -- path`.
#'
#'
#' @inheritParams exo_one_small_change
#' @git log_path
#'
#' @return The path to the new project
#' @export
#'
#' @examplesIf interactive()
#' parent_path <- withr::local_tempdir()
#' path <- exo_log_deleted_file(parent_path = parent_path)
exo_log_deleted_file <- function(parent_path) {
  path <- file.path(parent_path, "log-deleted-file")

  withr::local_options(usethis.quiet = TRUE)

  dir_create(path)
  original_dir <- getwd()

  withr::local_dir(path)
  gert::git_init()

  create_r_profile("log_deleted_file")

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
  script_lines <- c("a <- 1", "b <- 2")
  brio::write_lines(text = script_lines, path = new_script)
  gert::git_add(new_script)
  git_commit(tr_("feat: add script"))

  brio::write_lines(text = c("a <- 10", "b <- 2", "c <- 3"), path = new_script)
  gert::git_add(new_script)
  git_commit(tr_("feat: improve script"))

  brio::write_lines(text = c("a <- 10", "b <- 20", "c <- 3"), path = new_script)
  gert::git_add(new_script)
  git_commit(tr_("feat: edit script"))

  fs::file_delete(new_script)
  gert::git_add(new_script)
  git_commit(tr_("refactor: remove script"))

  flowers <- c(
    tr_("daisy"),
    tr_("tulip"),
    tr_("rose"),
    tr_("lavender"),
    tr_("sunflower"),
    tr_("jasmine"),
    tr_("orchid"),
    tr_("peony"),
    tr_("iris"),
    tr_("poppy")
  )

  messages <- c(
    tr_("feat: wonderful"),
    tr_("feat: delightful"),
    tr_("feat: brilliant"),
    tr_("feat: cheerful"),
    tr_("feat: graceful"),
    tr_("feat: joyful"),
    tr_("feat: peaceful"),
    tr_("feat: radiant"),
    tr_("feat: splendid"),
    tr_("feat: vibrant")
  )

  txt_file <- tr_("flowers.txt")

  purrr::walk2(flowers, messages, \(flower, message) {
    brio::write_lines(flower, txt_file)
    gert::git_add(txt_file)
    git_commit(message)
  })

  usethis::local_project(original_dir, force = TRUE)

  cli::cli_alert_info(tr_("Follow along in {path}!"))

  return(path)
}
