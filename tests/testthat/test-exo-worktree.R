test_that("exo_worktree() works", {
  rlang::local_options(cli.default_handler = function(msg) invisible(NULL))
  parent_path <- withr::local_tempdir()
  path <- exo_worktree(parent_path = parent_path)
  expect_identical(fs::path_file(path), "worktree")
  expect_snapshot(gert::git_log(repo = path)[["commit"]])
  expect_identical(gert::git_tag_list(repo = path)$name, c("v1", "v2", "v3"))
})
