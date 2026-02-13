# "Oh shit, I need to change the message on my last commit!"

To go with <https://ohshitgit.com/#change-last-commit-message>

## Usage

``` r
exo_latest_message(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path

## Related Git documentation

[`git commit --amend`](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---amend).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_latest_message(parent_path = parent_path)
}
```
