# "Oh shit, I committed and immediately realized I need to make one small change!"

To go with <https://ohshitgit.com/#change-last-commit>

## Usage

``` r
exo_one_small_change(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path

## Related Git documentation

[`git commit --amend --no-edit`](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---no-edit).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_one_small_change(parent_path = parent_path)
# Now add "thing 3" to the "bla" file
# And amend the latest commit
}
```
