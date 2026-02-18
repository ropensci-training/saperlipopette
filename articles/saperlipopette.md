# saperlipopette

``` r
library(saperlipopette)
```

The goal of saperlipopette is to hold functions creating Git exercises,
that users solve using their local and usual tools.

## Why this name?

This package is intended to be a companion to https://ohshitgit.com/, so
its name had to honour the exclamation. “saperlipopette” is an
[old-fashioned French
exclamation](https://en.wiktionary.org/wiki/saperlipopette). You can say
“Saperlipopette, Git!”.

## Example

``` r
library("saperlipopette")
parent_path <- withr::local_tempdir()
path <- exo_one_small_change(parent_path)
#> ℹ Follow along in /tmp/Rtmp73lssR/file1c6c4dac8e10/one-small-change!
# what's in path
fs::dir_tree(path)
#> /tmp/Rtmp73lssR/file1c6c4dac8e10/one-small-change
#> ├── R
#> └── bla
# with Git in a command line: git log
# or the gert R package
gert::git_log(repo = path)
#> # A tibble: 2 × 6
#>   commit                          author time                files merge message
#> * <chr>                           <chr>  <dttm>              <int> <lgl> <chr>  
#> 1 2ff0d31f566e68ae0ee94b6028a3fa… Jane … 2023-12-15 15:25:00     1 FALSE "feat:…
#> 2 e227ecc55e421f70b6e30602e6a2ee… Jane … 2023-12-15 15:25:00     2 FALSE "First…
```

At this stage, the user would open the newly created R project and
launch an R session, where messages would indicate them what to do, and
which URL to follow, to find, in this case, the corresponding ohshitgit
entry. In practice here the user would change a file, then Git add it,
then run `git commit --amend --no-edit`. The user would examine the [Git
history](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History)
before and after this.

    #> ✖ "Oh shit, I committed and immediately realized I need to make one small change!"
    #> ✖ I wanted to list 3 things in my bla file, not only two!
    #> ℹ See <https://ohshitgit.com/#change-last-commit>
    #> ℹ For more help use `tip()`

If they need more instructions than what is initially provided, the user
can run:

``` r
tip()
#> • Add 'thing 3' to the 'bla' file and save it.
#> • `git add bla`
#> • `git commit --amend --no-edit`
#> • Examine Git history.
```

That interface relies on adding an `.Rprofile` to the newly created
project, with instructions formatted with the cli package.

We’ve set the Git author, committer and date so that the automatic
commits get the same hashes, which can be useful when teaching a group:
everyone should be looking at the same hashes on their machine, except
for those commits they create themselves.

Below we use
[`gert::git_log()`](https://docs.ropensci.org/gert/reference/git_commit.html),
as opposed to `git log` in a command line, because that integrates
better with R Markdown that we use for building documentation.

``` r
parent_path <- withr::local_tempdir()
path <- exo_one_small_change(parent_path)
#> ℹ Follow along in /tmp/Rtmp73lssR/file1c6c51372837/one-small-change!
gert::git_log(repo = path)
#> # A tibble: 2 × 6
#>   commit                          author time                files merge message
#> * <chr>                           <chr>  <dttm>              <int> <lgl> <chr>  
#> 1 2ff0d31f566e68ae0ee94b6028a3fa… Jane … 2023-12-15 15:25:00     1 FALSE "feat:…
#> 2 e227ecc55e421f70b6e30602e6a2ee… Jane … 2023-12-15 15:25:00     2 FALSE "First…
parent_path2 <- withr::local_tempdir()
path2 <- exo_one_small_change(parent_path2)
#> ℹ Follow along in /tmp/Rtmp73lssR/file1c6cd5ec244/one-small-change!
gert::git_log(repo = path2)
#> # A tibble: 2 × 6
#>   commit                          author time                files merge message
#> * <chr>                           <chr>  <dttm>              <int> <lgl> <chr>  
#> 1 2ff0d31f566e68ae0ee94b6028a3fa… Jane … 2023-12-15 15:25:00     1 FALSE "feat:…
#> 2 e227ecc55e421f70b6e30602e6a2ee… Jane … 2023-12-15 15:25:00     2 FALSE "First…
```

### Multilingual!

The saperlipopette can create messages in English (default) but also in
French and Spanish. Example in French:

``` r
library("saperlipopette")
withr::local_language("fr")
parent_path <- withr::local_tempdir()
path <- exo_one_small_change(parent_path)
#> ℹ Follow along in /tmp/Rtmp73lssR/file1c6c48686e70/one-small-change!
# what's in path
fs::dir_tree(path)
#> /tmp/Rtmp73lssR/file1c6c48686e70/one-small-change
#> ├── R
#> └── bla
# with Git in a command line: git log
# or the gert R package
gert::git_log(repo = path)
#> # A tibble: 2 × 6
#>   commit                          author time                files merge message
#> * <chr>                           <chr>  <dttm>              <int> <lgl> <chr>  
#> 1 2ff0d31f566e68ae0ee94b6028a3fa… Jane … 2023-12-15 15:25:00     1 FALSE "feat:…
#> 2 e227ecc55e421f70b6e30602e6a2ee… Jane … 2023-12-15 15:25:00     2 FALSE "First…
```

    #> ✖ "Et merde, je viens de commiter et il manque une toute petite modification !"
    #> ✖ Je voulais lister 3 choses dans mon fichier bla, pas seulement 2 !
    #> ℹ Voir <https://ohshitgit.com/fr#modifier-le-dernier-commit>
    #> ℹ Pour plus d'aide, `tip()`

``` r
tip()
#> • Ajouter 'chose 3' au fichier 'bla' puis l'enregistrer.
#> • `git add bla`
#> • `git commit --amend --no-edit`
#> • Examiner l'historique Git.
```

## Exercises

Consult the
[reference](https://docs.ropensci.org/saperlipopette/reference/index.html).

Exercises cover:

- Oh Shit, Git!: exercises inspired by https://ohshitgit.com/ by Katie
  Sylor-Miller.
- Clean history: exercises on how to get a clean Git history, for
  instance using rebase interactive.
- Use history: exercises on how to use the Git history, for instance
  using blame.

As an individual learner, pick what you want to learn or try out! As an
instructor, you can mix and match exercises: for instance focussing the
session on solving common mistakes (Oh Shit, Git!) or on why and how to
create a clean Git history (exercises from “Use history” then exercises
from “Clean history”).

Feel free to suggest new exercises by opening a GitHub
[issue](https://github.com/ropensci-training/saperlipopette/issues).

## Recommended resources about Git

For beginners:

- [Happy Git with R](https://happygitwithr.com/)
- [Learn Git branching](https://learngitbranching.js.org/)

For users less new to Git:

- [Git in Practice by Mike
  McQuaid](https://masalmon.eu/2023/11/01/reading-notes-git-in-practice/)
- [Pro Git by Scott
  Chacon](https://masalmon.eu/2024/01/19/pro-git-scott-chacon-reading-notes/)
