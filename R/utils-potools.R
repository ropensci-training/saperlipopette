tr_ <- function(...) {
  enc2utf8(gettext(paste0(...), domain = "R-saperlipopette"))
}

create_r_profile <- function(exo_name) {
  current_language <- tr_("en")

  profile_path <- sprintf("exo_%s-Rprofile.%s.R", exo_name, current_language)

  if (!nzchar(system.file(profile_path, package = "saperlipopette"))) {
    profile_path <- sprintf("exo_%s-Rprofile.%s.R", exo_name, "en")
  }

  file.copy(
    system.file(profile_path, package = "saperlipopette"),
    ".Rprofile"
  )
}
