if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Et merde, j\'ai fait un truc horrible, par pitié dites-moi que git peut voyager dans le temps !?!"'
)
cli::cli_alert_danger(
  "J'ai accidentellement exécuté {.code git reset hard} donc j'ai perdu un commit important."
)
cli::cli_alert_danger("Je veux le récupérer !")
cli::cli_alert_info("Voir {.url https://ohshitgit.com/fr#magic-time-machine}")
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li("{.code git reflog}")
  cli::cli_li('{.code git reset HEAD@{1}}')
  cli::cli_li('Examiner l\'historique Git.')
}
