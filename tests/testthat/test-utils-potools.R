test_that("French", {
  skip_on_os("linux") # for now it works on my machine, fails due to some C lang stuff on CI
  rlang::local_options(cli.default_handler = function(msg) invisible(NULL))
  withr::local_language("fr")
  parent_path <- withr::local_tempdir()
  path <- exo_time_machine(parent_path = parent_path)
  expect_identical(fs::path_file(path), "time-machine")
  expect_snapshot(gert::git_log(repo = path)[["commit"]])
  expect_snapshot(gert::git_log(repo = path)[["message"]])
})

test_that("Spanish", {
  skip_on_os("linux") # for now it works on my machine, fails due to some C lang stuff on CI
  rlang::local_options(cli.default_handler = function(msg) invisible(NULL))
  withr::local_language("es")
  parent_path <- withr::local_tempdir()
  path <- exo_time_machine(parent_path = parent_path)
  expect_identical(fs::path_file(path), "time-machine")
  expect_snapshot(gert::git_log(repo = path)[["commit"]])
  expect_snapshot(gert::git_log(repo = path)[["message"]])
})
