test_that("exo_revparse() works", {
  rlang::local_options(cli.default_handler = function(msg) invisible(NULL))
  parent_path <- withr::local_tempdir()
  path <- exo_revparse(parent_path = parent_path)
  expect_identical(fs::path_file(path), "revparse")
  expect_snapshot(gert::git_log(repo = path)[["commit"]])
})
