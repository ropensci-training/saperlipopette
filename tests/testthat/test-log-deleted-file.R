test_that("exo_log_deleted_file() works", {
  rlang::local_options(cli.default_handler = function(msg) invisible(NULL))
  parent_path <- withr::local_tempdir()
  path <- exo_log_deleted_file(parent_path = parent_path)
  expect_identical(fs::path_file(path), "log-deleted-file")
  expect_snapshot(gert::git_log(repo = path)[["commit"]])
})
