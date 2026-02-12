# nocov start

git_links <- function() {
  rlang::check_installed("tibble")
  tibble::tribble(
    ~command        , ~name                          , ~url                                                                             ,
    "amend"         , "git commit --amend"           , "https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---amend"       ,
    "config"        , "git config"                   , "https://git-scm.com/docs/git-config"                                            ,
    "allow_empty"   , "git commit --allow-empty"     , "https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---allow-empty" ,
    "clean"         , "git clean"                    , "https://git-scm.com/docs/git-clean"                                             ,
    "reset_hard"    , "git reset --hard"             , "https://git-scm.com/docs/git-reset#Documentation/git-reset.txt---hard"          ,
    "branch"        , "git branch"                   , "https://git-scm.com/docs/git-branch"                                            ,
    "switch"        , "git switch"                   , "https://git-scm.com/docs/git-switch"                                            ,
    "checkout"      , "git checkout"                 , "https://git-scm.com/docs/git-checkout"                                          ,
    "reset"         , "git reset"                    , "https://git-scm.com/docs/git-reset"                                             ,
    "cherry_pick"   , "git cherry-pick"              , "https://git-scm.com/docs/git-cherry-pick"                                       ,
    "merge"         , "git merge"                    , "https://git-scm.com/docs/git-merge"                                             ,
    "bisect"        , "git bisect"                   , "https://git-scm.com/docs/git-bisect"                                            ,
    "amend_no_edit" , "git commit --amend --no-edit" , "https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---no-edit"     ,
    "rebase_i"      , "git rebase -i"                , "https://git-scm.com/docs/git-rebase#_interactive_mode"                          ,
    "reset_mixed"   , "git reset --mixed"            , "https://git-scm.com/docs/git-reset#Documentation/git-reset.txt---mixed"         ,
    "log"           , "git log"                      , "https://git-scm.com/docs/git-log"                                               ,
    "restore"       , "git restore"                  , "https://git-scm.com/docs/git-restore"                                           ,
    "commit"        , "git commit"                   , "https://git-scm.com/docs/git-commit"                                            ,
    "add_patch"     , "git add --patch"              , "https://git-scm.com/docs/git-add#Documentation/git-add.txt---patch"             ,
    "reflog"        , "git reflog"                   , "https://git-scm.com/docs/git-reflog"                                            ,
    "revert"        , "git revert"                   , "https://git-scm.com/docs/gitworktr-revert"                                      ,
    "worktree"      , "git worktree"                 , "https://git-scm.com/docs/git-worktree"                                          ,
    "tag"           , "git tag"                      , "https://git-scm.com/docs/git-tag"
  )
}

roxy_tag_parse.roxy_tag_git <- function(x) {
  roxygen2::tag_words(x)
}

roxy_tag_rd.roxy_tag_git <- function(x, base_path, env) {
  roxygen2::rd_section("gitcommands", x$val)
}

rlang::on_load({
  vctrs::s3_register(
    "roxygen2::roxy_tag_parse",
    "roxy_tag_git",
    roxy_tag_parse.roxy_tag_git
  )
  vctrs::s3_register(
    "roxygen2::roxy_tag_rd",
    "roxy_tag_git",
    roxy_tag_rd.roxy_tag_git
  )
})

#' @export
format.rd_section_gitcommands <- function(x, ...) {
  paste0(
    "\\section{Related Git documentation}{",
    present_git_link(x[["value"]]),
    ".}\n"
  )
}

present_git_link <- function(value) {
  format_git_single_link <- function(x, git_links) {
    df <- git_links[git_links$command == x, ]
    if (nrow(df) == 0) {
      cli::cli_warn("Can't find Git entry for {x}!")
    }
    sprintf("\\href{%s}{\\code{%s}}", df$url, df$name)
  }

  strings <- purrr::map_chr(
    unique(value),
    format_git_single_link,
    git_links = git_links()
  )

  paste(strings, collapse = ", ")
}
# nocov end
