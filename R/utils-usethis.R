create_project <- function(path) {
  # do not create rprojfile when testing
  # testthat:::is_testing()
  if (identical(Sys.getenv("TESTTHAT"), "true")) {
    rlang::with_options(
      usethis.quiet = getOption("usethis.quiet") %||% FALSE,
      usethis::create_project(path, rstudio = FALSE)
    )
  } else {
    rlang::with_options(
      usethis.quiet = getOption("usethis.quiet") %||% FALSE,
      usethis::create_project(path)
    )
  }
}
