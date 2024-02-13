## code to prepare `cube_palettes` dataset goes here

library(palettes)

# Define and name Cube colours -------------------------------

cube.green = pal_colour("#034638")
usethis::use_data(cube.green, overwrite = TRUE)
cube.pink = pal_colour("#ECBAA8")
usethis::use_data(cube.pink,overwrite = TRUE)
cube.black = pal_colour("black")
usethis::use_data(cube.black,overwrite = TRUE)
cube.white = pal_colour("white")
usethis::use_data(cube.white,overwrite = TRUE)
cube.grey = pal_colour("#D9D9D6")
usethis::use_data(cube.grey,overwrite = TRUE)

cube_colours = pal_palette(cube.green = cube.green,
                          cube.pink = cube.pink,
                          cube.black = cube.black,
                          cube.white = cube.white,
                          cube.grey = cube.grey)

usethis::use_data(cube_colours,overwrite = TRUE)


# Create tints ----------------------------------------------
.greens = pal_ramp(c(cube.green,cube.white),n=6, interpolate ="spline")
.greens = .greens[1:5]
.pinks = pal_ramp(c(cube.pink,cube.white),n=6)
.pinks = .pinks[1L:5L]
.greys = pal_ramp(c(cube.black,cube.white),n=6)
.greys = .greys[1L:5L]

# Define Cube palettes using colours from above ------------
cube_palettes_discrete =
  pal_palette(
    base = c(cube.green,cube.pink,cube.black,cube.grey,cube.white),
    dark = c(cube.green,cube.pink,cube.black,
             .greens[3L],.pinks[3L],.greys[3L]),
    light = c(cube.white,cube.pink,cube.black,
              .greens[5L],.pinks[5L],.greys[5L]),
    other = c(cube.green,cube.grey,cube.white,.greens[2L],.greys[2L])
    )

plot(cube_palettes_discrete)

# Cube palette tints ----------------------------

cube_palettes_tints =
  pal_palette(
    greens = .greens,
    pinks = .pinks,
    greys = .greys
    )

plot(cube_palettes_tints)

# Save to data
cube_palettes =
  c(
    cube_palettes_discrete,
    cube_palettes_tints
  )
usethis::use_data(cube_palettes_discrete, overwrite = TRUE)
usethis::use_data(cube_palettes_tints, overwrite = TRUE)
usethis::use_data(cube_palettes, overwrite = TRUE)

