if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Mierda, necesito deshacer un commit que hice hace 5 commits!"'
)
cli::cli_alert_danger(
  "Quiero deshacer mi commit 'fix: repara las cosas' porqué rompió mi codigo !"
)
cli::cli_alert_info("Ve {.url https://ohshitgit.com/es#dehacer-un-commit}")
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "{.code git revert <hash-you-see>}",
      "Inspecciona la historia de Git y los archivos."
    )
  )
}
