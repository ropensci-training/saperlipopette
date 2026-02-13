# "Oh shit, I accidentally committed something to main that should have been on a brand new branch!"

To go with <https://ohshitgit.com/#accidental-commit-master>

## Usage

``` r
exo_committed_to_main(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git reset --hard`](https://git-scm.com/docs/git-reset#Documentation/git-reset.txt---hard),
[`git branch`](https://git-scm.com/docs/git-branch),
[`git switch`](https://git-scm.com/docs/git-switch),
[`git checkout`](https://git-scm.com/docs/git-checkout).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_committed_to_main(parent_path = parent_path)
}
```
