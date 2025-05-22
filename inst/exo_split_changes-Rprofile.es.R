if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}
cli::cli_alert_danger(
  "Uy, quiero separar mis cambios a un archivo en distintos commits!"
)
cli::cli_alert_danger(
  "Quiero guardar mis 3 cambios de R/script.R en 3 commits en vez de 1."
)
cli::cli_alert_info(
  "Ve {.url https://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging#_staging_patches}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  ul <- cli::cli_ul()
  cli::cli_li("Inspecciona la historia de Git.")
  cli::cli_li("{.code git add --patch} para añadir un primer fragmento")
  ulid <- cli::cli_ul()
  cli::cli_li("'s' para dividir el fragmento")
  cli::cli_li("'y' para añadir el fragmento al index")
  cli::cli_li("'d' para añadir ninguno otro fragmento al index")
  cli::cli_li("Facultativo : '?' para ver la ayuda")
  cli::cli_end(ulid)
  cli::cli_li('{.code git commit -m "Primer cambio"}')
  cli::cli_li('{.code git add --patch} para añadir un segundo fragmento')
  ulid <- cli::cli_ul()
  cli::cli_li("'s' para dividir el fragmento")
  cli::cli_li("'y' para añadir el fragmento al index")
  cli::cli_li("'d' para añadir ninguno otro fragmento al index")
  cli::cli_li("Facultativo : '?' para ver la ayuda")
  cli::cli_end(ulid)
  cli::cli_li('{.code git commit -m "Segundo cambio"}')
  cli::cli_li('{.code git add *} para añadir el ultimo fragmento')
  cli::cli_li('{.code git commit -m "Tercer cambio"}')
  cli::cli_li("Inspecciona la historia de Git.")
  cli::cli_end(ul)
}
