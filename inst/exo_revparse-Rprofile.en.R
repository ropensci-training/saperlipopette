if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"I want to understand ancestry references!"')
cli::cli_alert_danger(
  "Find the commit ID and message for HEAD~5 and HEAD^^."
)
cli::cli_alert_info("For more help use {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examine Git history.",
      "{.code git rev-parse HEAD~5}",
      "{.code git show HEAD~5}",
      "{.code git rev-parse HEAD^^}",
      "{.code git show HEAD^^}"
    )
  )
}
