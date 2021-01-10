# ---
# jupyter:
#   jupytext:
#     formats: ipynb,R:percent,Rmd
#     text_representation:
#       extension: .R
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.8.1
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

# %% [markdown]
# # Spatial Figures Peer Review
#
# ## PUT YOUR NAME HERE: Marcio Woitek

# %% name="setup" tags=["remove_cell"]
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(maps))
suppressPackageStartupMessages(library(sf))
suppressPackageStartupMessages(library(rnaturalearth))
suppressPackageStartupMessages(library(rnaturalearthdata))
suppressPackageStartupMessages(library(rgeos))

# %% [markdown]
# ## Problem 1
#
# Create the figure using the data included in the R Markdown file.

# %% name="problem_1_data" tags=["remove_cell"]
# Make some data for painting the map:
my_world_map <- map_data("world")
countries <- unique(my_world_map$region)
set.seed(987)
some_data_values <- data.frame(
    "Region" = countries,
    "Score" = runif(252, 0, 100)
)

# %% name="problem_1" tags=["remove_input"] message=false
# scale_fill_distiller(palette = 5)
# Use left_join to combine the data_values to the world map data in
# my_world_map.

# %% [markdown]
# ## Problem 2
#
# Create the figure using the data included in the R Markdown file.

# %% name="problem_2_data" tags=["remove_cell"]
set.seed(15)
Measurement <- rnorm(32, 50, 1)

# %% name="problem_2" tags=["remove_input"] message=false
# Get just the maps of Costa Rica, Panama and Nicaragua.
# Put in points only for cities with a population of greater than 40,000. This
# should leave you with 32 cities.
# Use add_column to attach the "Measurement" variable to your data, and set
# that to the color aesthetic when you draw the points.
# Set the colors for the city points with scale_color_distiller(palette = 7).
# Set the size of all points to 5.

# %% [markdown]
# ## Problem 3
#
# Create the figure using the data included in the R Markdown file.

# %% name="problem_3_data" tags=["remove_cell"]
s_america <- ne_countries(
    scale = "medium",
    continent = "south america",
    returnclass = "sf"
)

# %% name="problem_3" tags=["remove_input"]
# The s_america object created in the chunk above is a simple features object
# with many columns. Identify the correct column based on the solution figure
# and use it to color in the choropleth.
# scale_fill_distiller(palette = 10)
