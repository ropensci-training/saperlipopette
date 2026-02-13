# "Oh shit, I accidentally committed to the wrong branch!"

To go with <https://ohshitgit.com/#accidental-commit-wrong-branch>

## Usage

``` r
exo_committed_to_wrong(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git cherry-pick`](https://git-scm.com/docs/git-cherry-pick),
[`git reset`](https://git-scm.com/docs/git-reset),
[`git switch`](https://git-scm.com/docs/git-switch),
[`git checkout`](https://git-scm.com/docs/git-checkout).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_committed_to_wrong(parent_path = parent_path)
}
```
