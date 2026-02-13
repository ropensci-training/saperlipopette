default_committer <- function() {
  gert::git_signature(
    name = Sys.getenv("SAPERLIPOPETTE_COMMITTER_NAME", "Jane Doe"),
    email = Sys.getenv("SAPERLIPOPETTE_COMMITTER_EMAIL", "jane@example.com"),
    time = parsedate::parse_iso_8601(
      Sys.getenv("SAPERLIPOPETTE_COMMITTER_DATE", "2023-12-15 15:25:00Z")
    )
  )
}

default_author <- function() {
  gert::git_signature(
    name = Sys.getenv("SAPERLIPOPETTE_AUTHOR_NAME", "Jane Doe"),
    email = Sys.getenv("SAPERLIPOPETTE_AUTHOR_EMAIL", "jane@example.com"),
    time = parsedate::parse_iso_8601(
      Sys.getenv("SAPERLIPOPETTE_AUTHOR_DATE", "2023-12-15 15:25:00Z")
    )
  )
}

git_commit <- function(message) {
  gert::git_commit(
    message = tr_(message),
    author = default_author(),
    committer = default_committer()
  )
}

git_jekyll_commit <- function(message, datetime) {
  withr::local_envvar(
    SAPERLIPOPETTE_AUTHOR_NAME = "Dr Jekyll",
    SAPERLIPOPETTE_AUTHOR_EMAIL = "jekyll@example.com",
    SAPERLIPOPETTE_AUTHOR_DATE = datetime
  )
  git_commit(message)
}

git_hyde_commit <- function(message, datetime) {
  withr::local_envvar(
    SAPERLIPOPETTE_AUTHOR_NAME = "Mr Hyde",
    SAPERLIPOPETTE_AUTHOR_EMAIL = "hyde@example.com",
    SAPERLIPOPETTE_AUTHOR_DATE = datetime
  )
  git_commit(message)
}

