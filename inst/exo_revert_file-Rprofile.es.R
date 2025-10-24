if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Mierda, necesito deshacer un commit que hice hace 5 commits!"'
)
cli::cli_alert_danger(
  "Quiero que bla.txt sea como era antes del commit 'fix: repara cosas' !"
)
cli::cli_alert_info("Ve {.url https://ohshitgit.com/es#dehacer-un-commit}")
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "{.code git checkout [saved hash] -- bla.txt}",
      "{.code git commit -m 'no need to copy-paste yay'}",
      "Inspecciona la historia de Git."
    )
  )
}
