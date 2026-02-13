# "Hey I'd like to see what merge conflicts look like!"

I made some work in a feature branch and want to merge it. Meanwhile,
the main branch advanced. Unfortunately someone touched the same file as
I did. Now I need to fix a merge conflict!

See also
<https://happygitwithr.com/git-branches.html#dealing-with-conflicts>.

## Usage

``` r
exo_conflict(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git merge`](https://git-scm.com/docs/git-merge).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_conflict(parent_path = parent_path)
}
```
