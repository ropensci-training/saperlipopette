if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"¡Mierda, quiero corregir el mensaje de mi último commit!'
)
cli::cli_alert_danger("¡He cometido un error tipográfico!")
cli::cli_alert_info(
  "Voir {.url https://ohshitgit.com/fr#corriger-dernier-message-commit}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "Nota que 'documennnto' tendria que ser 'documento' ! Error de tipeo !",
      "{.code git commit --amend}",
      "Inspecciona la historia de Git."
    )
  )
}
