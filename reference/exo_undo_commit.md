# "Oh shit, I need to undo a commit from like 5 commits ago!"

To go with <https://ohshitgit.com/#undo-a-commit>

## Usage

``` r
exo_undo_commit(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git log`](https://git-scm.com/docs/git-log),
[`git revert`](https://git-scm.com/docs/gitworktr-revert).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_undo_commit(parent_path = parent_path)
}
```
