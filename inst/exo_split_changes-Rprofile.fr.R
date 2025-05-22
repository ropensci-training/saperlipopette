if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}
cli::cli_alert_danger(
  "Hum je voudrais répartir ces changements du même fichier en plusieurs commits !"
)
cli::cli_alert_danger(
  "Je veux enregistrer mes 3 changements à R/script.R en 3 commits pas 1."
)
cli::cli_alert_info(
  "Voir {.url https://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging#_staging_patches}"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  ul <- cli::cli_ul()
  cli::cli_li("Examiner l'index de Git.")
  cli::cli_li("{.code git add --patch} pour ajouter un premier morceau")
  ulid <- cli::cli_ul()
  cli::cli_li("'s' pour diviser le morceau")
  cli::cli_li("'y' pour ajouter le morceau à l'index")
  cli::cli_li("'d' pour n'ajouter aucun autre morceau à l'index")
  cli::cli_li("Facultatif : '?' pour voir l'aide")
  cli::cli_end(ulid)
  cli::cli_li('{.code git commit -m "Premier changement"}')
  cli::cli_li('{.code git add --patch} pour ajouter un deuxième morceau')
  ulid <- cli::cli_ul()
  cli::cli_li("'s' pour diviser le morceau")
  cli::cli_li("'y' pour ajouter le morceau à l'index")
  cli::cli_li("'d' pour n'ajouter aucun autre morceau à l'index")
  cli::cli_li("Facultatif : '?' pour voir l'aide")
  cli::cli_end(ulid)
  cli::cli_li('{.code git commit -m "Deuxième changement"}')
  cli::cli_li('{.code git add *} pour ajouter le dernier morceau')
  cli::cli_li('{.code git commit -m "Troisième changement"}')
  cli::cli_li('Examiner l\'historique de Git.')
  cli::cli_end(ul)
}
