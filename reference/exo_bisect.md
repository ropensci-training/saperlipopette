# "Hey I'd like to find which commit introduced a bug!"

I notice a bug in my codebase. I can see the bug was not there a bunch
of commits ago. Beside doing regular debugging, I can find out which
commit introduced the bug by using `git bisect`. See
<https://git-scm.com/docs/git-bisect> and
<https://www.jimhester.com/post/2019-04-24-git-bisect/>.

## Usage

``` r
exo_bisect(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Workflow

Running the function will create the exercise as a new folder in
`parent_path`. If called from RStudio or Positron, the function will
open a new R session in that IDE. If not, the user will need to navigate
to the path returned by the function, and launch an R session from
there. The new R session will display messages about what challenge to
solve, and running the `tip()` function from that new R session will
display additional guiance.

## Related Git documentation

[`git bisect`](https://git-scm.com/docs/git-bisect).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_bisect(parent_path = parent_path)
}
```
