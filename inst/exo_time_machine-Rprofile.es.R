if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"¡Mierda, hice algo terriblemente mal!, ¡por favor dime que git tiene una máquina del tiempo mágica!"'
)
cli::cli_alert_danger(
  "Ejecuté {.code git reset hard} por descuido y perdí un commit importante."
)
cli::cli_alert_danger("Lo quiero recuperar !")
cli::cli_alert_info(
  "Ve {.url https://ohshitgit.com/es#maquina-del-tiempo-magica}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li("{.code git reflog}")
  cli::cli_li('{.code git reset HEAD@{1}}')
  cli::cli_li('Inspecciona la historia de Git.')
}
