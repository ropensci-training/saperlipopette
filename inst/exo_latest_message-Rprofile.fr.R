if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Et merde, je veux corriger le message de mon dernier commit !'
)
cli::cli_alert_danger("J'ai fait une faute de frappe !")
cli::cli_alert_info(
  "Voir {.url https://ohshitgit.com/fr#corriger-dernier-message-commit}"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "Remarquer que 'documennnt' devrait être 'document' ! Une faute de frappe !",
      "{.code git commit --amend} ou {.code git commit --amend -m 'document'}",
      "Examiner l'historique Git."
    )
  )
}
