
<!-- README.md is generated from README.Rmd. Please edit that file -->

# valentine <a href="https://valentine.tada.science"><img src="man/figures/logo.png" align="right" height="138" /></a>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/valentine)](https://CRAN.R-project.org/package=valentine)
[![R-CMD-check](https://github.com/tadascience/valentine/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tadascience/valentine/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of valentine is to spread the love about your favourite R
package.

## Installation

You can install the development version of valentine like so:

``` r
pak::pak("tadascience/valentine")
```

## Example

``` r
valentine::roses("dplyr")
#> Roses are red 🌹
#> dplyr is fierce and fast 💪
#> Filtering, sorting, and group by 🧩
#> Data wrangling made a blast! 💥
valentine::roses("lubridate", hint = "make it kinky")
#> Roses are red 🌹
#> Lubridate's syntax yearns to be fed 🗓️
#> With time manipulation, it'll make you swoon 😍
#> Get kinky with dates, all through the moon 🌙
```
