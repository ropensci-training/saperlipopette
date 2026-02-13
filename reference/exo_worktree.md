# "I need to see what the project looked like at a certain version!"

I want to create a folder containing the project as it was at tag v2, to
read the text file. The tool for that is `git worktree`.
<https://masalmon.eu/2024/01/23/git-worktree/>

## Usage

``` r
exo_worktree(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git log`](https://git-scm.com/docs/git-log),
[`git worktree`](https://git-scm.com/docs/git-worktree),
[`git tag`](https://git-scm.com/docs/git-tag).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_worktree(parent_path = parent_path)
}
```
