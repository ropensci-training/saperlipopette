# "I want to understand ancestry references!"

I want to find the commit ID and message for HEAD~5 and HEAD^^. The tool
for that is `git rev-parse` combined with `git log` or `git show`. More
on ancestry references:
<https://git-scm.com/book/be/v2/Git-Tools-Revision-Selection.html#_ancestry_references>.

## Usage

``` r
exo_revparse(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git rev-parse`](https://git-scm.com/docs/git-rev-parse),
[`git log`](https://git-scm.com/docs/git-log),
[`git show`](https://git-scm.com/docs/git-show).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_revparse(parent_path = parent_path)
}
```
