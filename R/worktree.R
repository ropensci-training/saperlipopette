#' "I need to see what the project looked like at a certain version!"
#'
#' @description
#' I want to create a folder containing the project as it was at tag v2,
#' to read the flowers.txt file.
#' The tool for that is `git worktree`.
#'
#'
#' @inheritParams exo_one_small_change
#' @git log worktree tag
#'
#' @return The path to the new project
#' @export
#'
#' @examplesIf interactive()
#' parent_path <- withr::local_tempdir()
#' path <- exo_worktree(parent_path = parent_path)
exo_worktree <- function(parent_path) {
  path <- file.path(parent_path, "worktree")

  withr::local_options(usethis.quiet = TRUE)

  dir_create(path)
  original_dir <- getwd()

  withr::local_dir(path)
  gert::git_init()

  create_r_profile("worktree")

  create_project(path = getwd())
  # Ignore Rproj that might otherwise get edited when we open the project
  rproj <- fs::dir_ls(glob = "*.Rproj")
  usethis::local_project(getwd(), force = TRUE)
  usethis::use_git_ignore(rproj)
  usethis::use_git_ignore(".Rprofile")
  gert::git_add("*")
  git_commit(tr_("First commit"))

  flowers <- c(
    "daisy",
    "tulip",
    "rose",
    "lavender",
    "sunflower",
    "jasmine",
    "orchid",
    "peony",
    "iris",
    "poppy"
  )

  messages <- c(
    "feat: wonderful",
    "feat: delightful",
    "feat: brilliant",
    "feat: cheerful",
    "feat: graceful",
    "feat: joyful",
    "feat: peaceful",
    "feat: radiant",
    "feat: splendid",
    "feat: vibrant"
  )

  purrr::walk2(flowers, messages, \(flower, message) {
    brio::write_lines(flower, "flowers.txt")
    gert::git_add("flowers.txt")
    git_commit(message)
  })

  log <- gert::git_log()
  gert::git_config_set("user.name", "Jane Doe")
  gert::git_config_set("user.email", "jane@example.com")
  gert::git_tag_create("v1", message = "v1", ref = log$commit[9])
  gert::git_tag_create("v2", message = "v2", ref = log$commit[6])
  gert::git_tag_create("v3", message = "v3", ref = log$commit[3])

  usethis::local_project(original_dir, force = TRUE)

  cli::cli_alert_info(tr_("Follow along in {path}!"))

  return(path)
}
