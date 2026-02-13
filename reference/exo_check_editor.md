# "Hey, I don't want to get into Vim by mistake!"

An exercice to check your Git's core.editor is set correctly.

## Usage

``` r
exo_check_editor(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git config`](https://git-scm.com/docs/git-config),
[`git commit --allow-empty`](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---allow-empty).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_check_editor(parent_path = parent_path)
}
```
