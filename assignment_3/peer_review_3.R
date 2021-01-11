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
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(gganimate))
suppressPackageStartupMessages(library(gifski))
suppressPackageStartupMessages(library(plotly))

# %% [markdown]
# ## Problem 1

# %% name="problem_1_data" tags=["remove_cell"]
Category <- c("Alpha", "Beta", "Zeta")
City <- c("Hong Kong", "London", "Nairobi")
my_dat <- expand_grid(Category, City)
set.seed(84684)
my_dat$Value <- sample(1:10, 9, replace = T)

# %% name="problem_1" tags=["remove_input"] message=false
ggplot2::ggplot(
    data = my_dat,
    mapping = ggplot2::aes(
        x = Category,
        y = Value,
        fill = City
    )) +
    ggplot2::geom_col() +
    gganimate::transition_states(
        states = City,
        state_length = 2
    ) +
    gganimate::enter_fade() +
    gganimate::exit_fade()

# %% [markdown]
# ![Solution to Problem 1](problem_1.gif)
#
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
# Create the `ggplot` figure:
gg_figure <- ggplot2::ggplot(
    data = my_dat,
    mapping = ggplot2::aes(
        x = Company,
        y = Output,
        fill = Company
    )) +
    ggplot2::geom_boxplot()

# Create the interactive figure using `plotly`:
plotly::ggplotly(gg_figure)

# %% [markdown]
# ## Problem 3

# %% name="problem_3_data" tags=["remove_input"] message=false warning=false
Category <- seq(from = 1, to = 10)
Time <- seq(from = 1, to = 10)
dat3 <- expand_grid(Category, Time)
set.seed(78957)
dat3$Quantity <- runif(100, 0, 10)

# %% name="problem_3" tags=["remove_input"] message=false warning=false
plotly::ggplotly(
    ggplot2::ggplot(
        mapping = ggplot2::aes(frame = Time)) +
        ggplot2::geom_point(
            data = dat3,
            mapping = ggplot2::aes(
                x = Category,
                y = Quantity
            )) +
        ggplot2::geom_segment(
            data = dat3,
            mapping = ggplot2::aes(
                x = Category,
                xend = Category,
                y = 0,
                yend = Quantity
            )) +
        ggplot2::theme(
            axis.text.x = ggplot2::element_text(angle = 90)
        ))
