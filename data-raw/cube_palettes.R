## code to prepare `cube_palettes` dataset goes here

usethis::use_data(cube_palettes, overwrite = TRUE)

library(palettes)

# Cube palette discrete -------------------------------

cube.green = "#034638"
cube.pink = "#ECBAA8"
cube.black = "black"
cube.white = "white"
cube.grey = "#D9D9D6"

cube_palettes_discrete =
  pal_palette(
    base = c(cube.green,cube.pink,cube.black,cube.white,cube.grey),
    dark = c(cube.green,cube.pink,cube.black,
             scales::alpha(cube.green,.8),
             scales::alpha(cube.pink,.8),
             cube.grey),
    light = c(cube.white,cube.pink,cube.black,
             scales::alpha(cube.green,.4),
             scales::alpha(cube.pink,.4),
             cube.grey),
    other = c(cube.green,cube.black,cube.white,cube.grey,
              scales::alpha(cube.green,.8),
              scales::alpha(cube.grey,.4))
    )

plot(cube_palettes_discrete)

# Cube palette tints ----------------------------

cube_palettes_tints =
  pal_palette(
    greens =
      c(cube.green,
        scales::alpha(cube.green,.8),
        scales::alpha(cube.green,.6),
        scales::alpha(cube.green,.4),
        scales::alpha(cube.green,.2)
        ),
    pinks =
      c(cube.pink,
        scales::alpha(cube.pink,.8),
        scales::alpha(cube.pink,.6),
        scales::alpha(cube.pink,.4),
        scales::alpha(cube.pink,.2)
      ),

  )

plot(cube_palettes_tints)

