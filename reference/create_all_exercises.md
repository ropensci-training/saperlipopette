# Create all exercises folder at once

But do not open them! Having all the exercises as folders within
`parent_path` makes it possible to resolve them one by one, if one wants
to practice all that is available with the package. Run this function
only if there are no exercise folder already created in `parent_path`:
you can use a brand-new folder for instance.

## Usage

``` r
create_all_exercises(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The parent path

## Workflow

Running the function will create the exercise as a new folder in
`parent_path`. If called from RStudio or Positron, the function will
open a new R session in that IDE. If not, the user will need to navigate
to the path returned by the function, and launch an R session from
there. The new R session will display messages about what challenge to
solve, and running the `tip()` function from that new R session will
display additional guiance.

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- create_all_exercises(parent_path = parent_path)
}
```
