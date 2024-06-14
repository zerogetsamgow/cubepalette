## code to prepare `cube_palettes` dataset goes here

library(palettes)

# Define and name Cube colours -------------------------------
# Greens, with darkgreen the main cube colour
cube.darkgreen = pal_colour("#034638")
usethis::use_data(cube.darkgreen, overwrite = TRUE)

cube.green = pal_colour("#9AB5AF")
usethis::use_data(cube.green, overwrite = TRUE)

cube.lightgreen = pal_colour("#CDDAD7")
usethis::use_data(cube.lightgreen, overwrite = TRUE)


# Oranges, with lightorange the main cube colour
cube.lightorange = pal_colour("#ECBAA8")
usethis::use_data(cube.lightorange,overwrite = TRUE)
cube.orange = pal_colour("#A64724")
usethis::use_data(cube.orange,overwrite = TRUE)
cube.darkorange = pal_colour("#572613")
usethis::use_data(cube.darkorange,overwrite = TRUE)
# Shade with grey the main cube colour
cube.grey = pal_colour("#D9D9D6")#D6D6D9
usethis::use_data(cube.grey,overwrite = TRUE)
cube.darkgrey = pal_colour("#A5A59E")
usethis::use_data(cube.darkgrey,overwrite = TRUE)
cube.black = pal_colour("black")
usethis::use_data(cube.black,overwrite = TRUE)
cube.white = pal_colour("white")
usethis::use_data(cube.white,overwrite = TRUE)

# Keep cube.pink for old code, now call cube.orange
cube.pink = pal_colour("#ECBAA8")
usethis::use_data(cube.pink,overwrite = TRUE)

# Create
cube_colours =
  pal_palette(
    #primary colours
    primary = c(
      cube.darkgreen,
      cube.lightorange,
      cube.grey),
    # secondary colours
    #secondary
    secondary =
      c(
        cube.green,
        cube.orange,
        cube.white),
    # tertiary colours
    tertiary =
      c(
        cube.lightgreen,
        cube.darkorange,
        cube.black
        )
    )

usethis::use_data(cube_colours,overwrite = TRUE)


# Create tints ----------------------------------------------
# Greens at 20 per cent intervals
.greens = pal_ramp(c(cube.darkgreen,cube.white),n=6, interpolate ="spline")
.greens = .greens[1:5]

.manygreens =
  c(
    pal_ramp(c(cube.darkgreen,cube.green), n=4, interpolate ="spline"),
    pal_ramp(c(cube.green,cube.lightgreen),n=4, interpolate ="spline"),
    pal_ramp(c(cube.lightgreen,cube.white),n=4, interpolate ="spline")
)
.manygreens = .manygreens[c(1L:3L,5L:7L,9L:11L)]

# Orangees
.oranges = pal_ramp(c(cube.lightorange,cube.white),n=6)
.oranges = .oranges[1L:5L]

.darkoranges = c(pal_ramp(c(cube.darkorange,cube.orange),n=4,),
                 pal_ramp(c(cube.orange,cube.lightorange),n=4),
                 pal_ramp(c(cube.lightorange,cube.white),n=4))
.darkoranges = .darkoranges[c(1L:3L,5L:7L,9L:11L)]

.greys = c(
  pal_ramp(c(cube.darkgrey,cube.grey),n=3)
  ,pal_ramp(c(cube.grey,cube.white),n=6)
  )
.greys = .greys[c(1L:3L,5L:7L)]

.pinks = pal_ramp(c(cube.pink,cube.white),n=6)
.pinks = .pinks[1L:5L]

# Define Cube palettes using colours from above ------------
cube_palettes_discrete =
  pal_palette(
    base = c(cube.darkgreen,cube.lightorange,cube.grey,
             cube.green,cube.orange,cube.white,
             cube.lightgreen,cube.darkorange,cube.black),
    dark = c(cube.darkgreen,cube.lightorange,cube.grey,
             cube.green,cube.orange,
             cube.lightgreen,cube.darkorange,cube.black),
    # Omit darkgreen for light
    light = c(cube.lightgreen,cube.lightorange,cube.grey,
              cube.green,cube.orange,
              cube.darkorange,cube.black),
    # Omit lightorange for
    other = c(cube.darkgreen,cube.orange,cube.grey,
              cube.darkorange,cube.green,
              cube.lightgreen,cube.black)
    )

plot(cube_palettes_discrete)

# Cube palette tints ----------------------------

cube_palettes_tints =
  pal_palette(
    greens = .greens,
    manygreens = .manygreens,
    oranges = .oranges,
    darkoranges = .darkoranges,
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

