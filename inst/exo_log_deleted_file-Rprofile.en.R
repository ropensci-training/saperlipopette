if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"I want to find which commit deleted a file!"')
cli::cli_alert_danger(
  "Find which commit deleted script.R!"
)
cli::cli_alert_info("For more help use {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examine Git history.",
      "{.code git log --oneline}",
      "{.code git log --oneline -- R/script.R}"
    )
  )
}
