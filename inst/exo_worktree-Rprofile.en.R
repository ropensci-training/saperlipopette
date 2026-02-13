if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"I need to see what flowers.txt looked like at tag v2!"')
cli::cli_alert_danger(
  "Create a folder containing the project as it was at tag v2."
)
cli::cli_alert_info("For more help use {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examine Git history.",
      "{.code git worktree add ../v2 v2}",
      "Open {.path ../v2/flowers.txt}",
      "{.code git worktree list}",
      "{.code git worktree v2}",
      "{.code git worktree list}"
    )
  )
}
