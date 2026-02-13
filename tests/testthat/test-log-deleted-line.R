test_that("exo_log_deleted_line() works", {
  rlang::local_options(cli.default_handler = function(msg) invisible(NULL))
  parent_path <- withr::local_tempdir()
  path <- exo_log_deleted_line(parent_path = parent_path)
  expect_equal(fs::path_file(path), "log-deleted-line")
  expect_snapshot(gert::git_log(repo = path)[["commit"]])
})
