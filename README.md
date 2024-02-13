
<!-- README.md is generated from README.Rmd. Please edit that file -->

# valentine <a href="https://valentine.tada.science"><img src="man/figures/logo.png" align="right" height="138" /></a>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/valentine)](https://CRAN.R-project.org/package=valentine)
[![R-CMD-check](https://github.com/tadascience/valentine/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tadascience/valentine/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of valentine is to spread the love 💛 about your favourite R
package via [ChatGPT](https://openai.com/) generated “roses are red …”
poems 🌹.

## Installation

You can install the development version:

``` r
pak::pak("tadascience/valentine")
```

## Setup

`valentine::roses()` uses the
[openai::create_chat_completion()](https://irudnyts.github.io/openai/reference/create_chat_completion.html)
function to create the poem, this needs the `OPENAI_API_KEY` environment
variable set to your openai API key.

Once you have retrieved the api key from
[openai](https://platform.openai.com/), the easiest is to store it in
your `.Renviron` file via `usethis::edit_r_environ()`. See the
[openai](https://irudnyts.github.io/openai/index.html) 📦 for more
details.

## Example

``` r
valentine::roses("dplyr")
#> Roses are 🌹 red, violets are 💙 blue,
#> With dplyr 📦, data wrangling is a breeze too. 
#> 🔍 Filter, ✂️ select, and mutate with ease,
#> Data manipulation made simple, no more unease!
valentine::roses("lubridate", hint = "make it kinky")
#> Roses are red, 🌹
#> Lubridate's sweet, 🕰️
#> It handles dates oh so fine, 😍
#> Making time play naughty in our code. 😈
```
