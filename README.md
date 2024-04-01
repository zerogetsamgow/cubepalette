
<style>
    img {
        border-style: none;
        width: 80%;
        background-color: none;
    }
</style>
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cubepalettes

<!-- badges: start -->
<!-- badges: end -->

Colour and palettes as defined in the Cube Group Brand guidelines.

The main purpose of cubepalette is to enable Cube Group staff to use the
colours and palettes defined in the brand guidelines within R.

cubepalette was created with the **palettes** package, which provides a
comprehensive library for colour vectors and colour palettes using a new
family of colour classes (`palettes_colour`, and `palettes_palette`)
that always print as hex codes with colour previews. Colour palette
packages created with palettes have access to the following
capabilities, all without requiring you to write any code: formatting,
casting and coercion, extraction and updating of components, plotting,
colour mixing arithmetic, and colour interpolation.

See the following vignettes to learn how to use cubepalletws with other
packages:

- [Using palettes with
  ggplot2](https://mccarthy-m-g.github.io/palettes/articles/ggplot2.html)
- [Using palettes with
  gt](https://mccarthy-m-g.github.io/palettes/articles/gt.html)
- [Using palettes with
  biscale](https://mccarthy-m-g.github.io/palettes/articles/biscale.html)
- [Compatibility with other colour
  packages](https://mccarthy-m-g.github.io/palettes/articles/compatibility.html)

## Included Colours

The cube palettte includes three colours green, orange, grey. These are
supported by light and dark shades.

    #> Loading required package: palettes

<img src="man/figures/README-unnamed-chunk-2-1.png" width="80%" height="30px" />

### Primary colours

Cube Group’s colour palette uses modern and distinctive tones to convey
corporate warmth.

### Cube Green

<img src="man/figures/README-unnamed-chunk-3-1.png" width="80%" height="30px" />

`cube.darkgreen` is used in majority, bringing maturity and a
seriousness when needed.

### Cube Orange

<img src="man/figures/README-unnamed-chunk-4-1.png" width="80%" height="30px" />

`cube.lightorange` adds warmth, livening up layouts and highlighting key
information.

### Cube Grey

<img src="man/figures/README-unnamed-chunk-5-1.png" width="80%" height="30px" />

`cube.grey` is used as a neutral background colour.

## Secondary colours

### Cube Green, Orange and White

The `cube.green`, `cube.orange` and `cube.white` comprise the secondary
colours

## Tertiary colours

### Cube Green, Orange and White

The `cube.lightgreen`, `cube.darkorange` and `cube.black` comprise the
tertiary colours

`cube.black` and `cube.white` are convenience names for `black` and
`white` that allow for consistent syntax when using the cubepalette.

## Installation

You can install the development version of cubepalette from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zerogetsamgow/cubepalette")
```

## Usage

``` r
library(cubepalette)
```

cubepalette comes with a set of 4 discrete colour palettes, and 5
sequential colour palettes, which can be accessed from the following R
objects:

- `cube_palettes_discrete` for discrete palettes
- `cube_palettes_tints` for sequential palettes
- `cube_palettes` for all palettes

### Discrete

Discrete palettes for use with various backgrounds are available.
`dark`, `light` and `other` have been compiled to work on backgrounds
composed of colours from the Cube Group brand guideline.

``` r
plot(cube_palettes_discrete)
```

<img src="man/figures/README-plot-cube-palettes-discrete-1.png" width="80%" />

### Tints

For long form documents infographics and charts, tints from the Cube
Group colour palette can be used in 20 per cent increments.
`cube_palettes_tints` is populated with compliant `greens`, `oraness`
and `greys`.

A broader palette - `darkoranges` - is included for greater
variation/increments where required.

``` r
plot(cube_palettes_tints)
```

<img src="man/figures/README-plot-cube-palettes-tints-1.png" width="80%" />

Palettes can be subset using `[`, `[[`, and `$`.

- To extract one or more palettes use `[`:

  ``` r
  plot(cube_palettes_tints[c("greens", "greys")])
  ```

  <img src="man/figures/README-extract-palette-1.png" width="80%" />

- To extract a single palette as a colour vector use `[[` or `$`:

  ``` r

  plot(cube_palettes_tints[["oranges"]])
  ```

  <img src="man/figures/README-extract-vector-1-1.png" width="80%" />

  ``` r
  plot(cube_palettes_tints$darkoranges)
  ```

  <img src="man/figures/README-extract-vector-2-1.png" width="80%" />

- To get names of palettes use `names()`:

  ``` r
  names(cube_palettes_tints)
  #> [1] "greens"      "oranges"     "darkoranges" "pinks"      
  #> [5] "greys"
  ```

## Cube pink

`cubepalette` includes a colour `cube.pink` that is deprecated.
`cube.lightorange` is the preferred name for this colour.

## Documentation

See also documentation for the palettes package at
[`https://mccarthy-m-g.github.io/palettes/`](https://mccarthy-m-g.github.io/palettes/reference/index.html)
or in the installed package: `help(package = "palettes")`.
