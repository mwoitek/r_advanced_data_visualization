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
# # Animations and Interactivity
#
# ## PUT YOUR NAME HERE: Marcio Woitek

# %% name="setup" tags=["remove_cell"]
library(tidyverse)
library(gganimate)
library(gifski)
library(plotly)

# %% [markdown]
# ## Problem 1

# %% name="problem_1_data" tags=["remove_cell"]
Category <- c("Alpha", "Beta", "Zeta")
City <- c("Hong Kong", "London", "Nairobi")
my_dat <- expand_grid(Category, City)
set.seed(84684)
my_dat$Value <- sample(1:10, 9, replace = T)

# %% name="problem_1" tags=["remove_input"] message=false
# Put your ggplot figure with the appropriate gganimate functions here.

# %% [markdown]
# ## Problem 2

# %% name="problem_2_data" tags=["remove_cell"]
Response <- c("Energize", "Amazing", "Great")
set.seed(9819)
Energize <- tibble(
    Company = rep("Energize", 100),
    Output = rnorm(100, 50, 20)
)
set.seed(9819)
Amazing <- tibble(
    Company = rep("Amazing", 100),
    Output = rnorm(100, 50, 10)
)
set.seed(9819)
Great <- tibble(
    Company = rep("Great", 100),
    Output = rnorm(100, 40, 5)
)
my_dat <- bind_rows(Energize, Amazing, Great)

# %% name="problem_2" tags=["remove_input"] message=false warning=false
# Put your ggplotly() figure here.

# %% [markdown]
# ## Problem 3

# %% name="problem_3_data" tags=["remove_input"] message=false warning=false
Category <- seq(from = 1, to = 10)
Time <- seq(from = 1, to = 10)
dat3 <- expand_grid(Category, Time)
set.seed(78957)
dat3$Quantity <- runif(100, 0, 10)

# %% name="problem_3" tags=["remove_input"] message=false warning=false
# Put your ggplotly() figure here.
