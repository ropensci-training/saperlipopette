#' Git committer for reproducibility
#' Can be overriden through environment variables
#' @noRd
saperlipopette_committer <- function() {
  gert::git_signature(
    name = Sys.getenv("SAPERLIPOPETTE_COMMITTER_NAME", "Jane Doe"),
    email = Sys.getenv("SAPERLIPOPETTE_COMMITTER_EMAIL", "jane@example.com"),
    time = parsedate::parse_iso_8601(
      Sys.getenv("SAPERLIPOPETTE_COMMITTER_DATE", "2023-12-15 15:25:00Z")
    )
  )
}

#' Git author for reproducibility
#' Can be overriden through environment variables
#' @noRd
saperlipopette_author <- function() {
  gert::git_signature(
    name = Sys.getenv("SAPERLIPOPETTE_AUTHOR_NAME", "Jane Doe"),
    email = Sys.getenv("SAPERLIPOPETTE_AUTHOR_EMAIL", "jane@example.com"),
    time = parsedate::parse_iso_8601(
      Sys.getenv("SAPERLIPOPETTE_AUTHOR_DATE", "2023-12-15 15:25:00Z")
    )
  )
}

#' Wrapper for reproducibility to use default committer/author
#' @noRd
git_commit <- function(message) {
  gert::git_commit(
    message = tr_(message),
    author = saperlipopette_author(),
    committer = saperlipopette_committer()
  )
}

#' Generic function to commit as a specific persona
#' @noRd
git_persona_commit <- function(message, datetime, name, email) {
  withr::local_envvar(
    SAPERLIPOPETTE_AUTHOR_NAME = name,
    SAPERLIPOPETTE_AUTHOR_EMAIL = email,
    SAPERLIPOPETTE_AUTHOR_DATE = datetime
  )
  git_commit(message)
}

git_jekyll_commit <- function(message, datetime) {
  git_persona_commit(
    message = message,
    datetime = datetime,
    name = "Dr Jekyll",
    email = "jekyll@example.com"
  )
}

git_hyde_commit <- function(message, datetime) {
  git_persona_commit(
    message = message,
    datetime = datetime,
    name = "Mr Hyde",
    email = "hyde@example.com"
  )
}
