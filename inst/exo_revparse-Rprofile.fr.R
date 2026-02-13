if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"Je veux comprendre les références d\'ascendance !"')
cli::cli_alert_danger(
  "Trouve l'identifiant et le message du commit HEAD~5 et HEAD^^."
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git rev-parse HEAD~5}",
      "{.code git show HEAD~5}",
      "{.code git rev-parse HEAD^^}",
      "{.code git show HEAD^^}"
    )
  )
}
