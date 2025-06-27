test_that("exo_check_editor() works", {
  rlang::local_options(cli.default_handler = function(msg) invisible(NULL))
  parent_path <- withr::local_tempdir()
  path <- exo_check_editor(parent_path = parent_path)
  expect_equal(fs::path_file(path), "check-editor")
})
