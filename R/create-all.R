#' Create all exercises folder at once
#'
#' But do not open them!
#' Having all the exercises as folders within `parent_path` makes it possible
#' to resolve them one by one, if one wants to practice all that is available
#' with the package.
#'
#' @inheritParams exo_one_small_change
#'
#' @return The parent path
#' @inheritSection exo_committed_to_main Workflow
#' @export
#'
#' @examplesIf interactive()
#' parent_path <- withr::local_tempdir()
#' path <- create_all_exercises(parent_path = parent_path)
create_all_exercises <- function(parent_path) {
  rlang::local_interactive(FALSE)

  funs <- getNamespaceExports("saperlipopette")
  funs <- setdiff(funs, "create_all_exercises")
  purrr::walk(funs, rlang::exec, parent_path = parent_path)

  fs::dir_tree(parent_path)

  parent_path
}
