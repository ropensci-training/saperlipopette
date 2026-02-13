# "Hey I'd like to make my commits in a branch look informative and smart!"

I am working in a feature branch that's all my own. I made many small
commits as I was figuring things out. Now I want the commits to tell a
story for the PR reviewers, and not a story of how many stupid mistakes
I made! The tool for that is `git base --interactive` also available as
`git rebase -i`. Useful links:

- <https://jvns.ca/blog/2023/11/06/rebasing-what-can-go-wrong-/>

- <https://wizardzines.com/comics/rules-for-rebasing/>

- <https://github.com/MikeMcQuaid/GitInPractice/blob/main/06-RewritingHistoryAndDisasterRecovery.adoc#rebase-commits-interactively-git-rebase-interactive>

- <https://github.blog/developer-skills/github/write-better-commits-build-better-projects/>

## Usage

``` r
exo_rebase_i(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git rebase -i`](https://git-scm.com/docs/git-rebase#_interactive_mode).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_rebase_i(parent_path = parent_path)
}
```
