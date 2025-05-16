if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Je veux fusionner la branche feature dans la branche main."'
)
cli::cli_alert_danger("Je vais devoir m'occuper d'un 'merge conflict'.")
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git merge feature} sur la branche par défaut",
      "Modifier R/script.R jusqu'à ce qu'il soit comme on le souhaiter, retirer les marqueurs de conflit.",
      "{.code git add R/script.R}",
      "{.code git commit}.",
      "Regarder la fusion se finaliser, éventuellement modifier un message de commit.",
      "Examiner l'historique Git."
    )
  )
}
