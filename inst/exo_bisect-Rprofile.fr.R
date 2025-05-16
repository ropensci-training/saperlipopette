if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Hum, depuis quand mon script {.path R/script.R} ne marche plus ?"'
)
cli::cli_alert_danger("Je dois utiliser git bisect.")
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "Exécuter R/script.R, constater que ça donne une erreur.",
      "{.code git bisect start}",
      "{.code git bisect bad} (la version actuelle est cassée).",
      "{.code git bisect good <first-commit-SHA>} (la première version fonctionnait).",
      "À chaque étape source R/script.R et entrer {.code git bisect bad} si erreur, {.code git bisect good} si pas d'erreur.",
      "Continuer jusqu'à ce que git bisect donne le coupable.",
      "{.code git bisect reset} pour sortir du mode.",
      "Examiner la diff de Git à ce commit coupable.",
      "Avancé : au lieu des instructions 'à chaque étape', exécuter {.code git bisect run Rscript R/script.R}."
    )
  )
}
