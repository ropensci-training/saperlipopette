# "Hey I'd like to restart from scratch"

I am working in a feature branch that's all my own. I made many small
commits as I was figuring things out. Now I want the commits to tell a
story for the PR reviewers, and not a story of how many stupid mistakes
I made! Instead of `git base --interactive` also available as
`git rebase -i`, I can also use `git reset --mixed` and then build the
commits. Useful links:

- <https://github.blog/developer-skills/github/write-better-commits-build-better-projects/>

- <https://masalmon.eu/2024/06/11/rewrite-git-history/>

## Usage

``` r
exo_reset(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git reset --mixed`](https://git-scm.com/docs/git-reset#Documentation/git-reset.txt---mixed).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_reset(parent_path = parent_path)
}
```
