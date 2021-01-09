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
# # More `ggplot` Figures Peer Review
#
# ## PUT YOUR NAME HERE: Marcio Woitek

# %% name="setup" tags=["remove_cell"]
library(tidyverse)
library(RColorBrewer)

# %% [markdown]
# ## Problem 1
#
# Create the figure in the solution for Problem 1 using the data included in the
# R Markdown file.

# %% name="problem_1_data" tags=["remove_cell"]
set.seed(12345)
var1 <- runif(50, 0, 10)

set.seed(12345)
var2 <- var1 + rnorm(50, 5, 2)

set.seed(12345)
var3 <- var1 * (-rnorm(50, 1, .2))

dat1 <- tibble(var1, var2, var3)

# %% name="problem_1" tags=["remove_input"] message=false

# %% [markdown]
# ## Problem 2
#
# Create the figure in the solution for Problem 2 using the data included in the
# R Markdown file.

# %% name="problem_2_data" tags=["remove_cell"]
set.seed(10)
var1 <- runif(50, 0, 10)

set.seed(10)
var2 <- var1 + rnorm(50, 5, 2)

set.seed(10)
var3 <- var1 * (-rnorm(50, 1, .2))

dat2 <- tibble(var1, var2, var3)

# %% name="problem_2" tags=["remove_input"] message=false

# %% [markdown]
# ## Problem 3
#
# Create the figure in the solution for Problem 3 using the data included in the
# R Markdown file.

# %% name="problem_3_data" tags=["remove_cell"]
set.seed(12)
var1 <- runif(50, 0, 10)

set.seed(12)
var2 <- var1 + rnorm(50, 5, 2)

set.seed(12)
var3 <- var1 * (-rnorm(50, 1, .2))

dat3 <- tibble(var1, var2, var3)

# %% name="problem_3" tags=["remove_input"]

# %% [markdown]
# ## Problem 4
#
# Create the figure in the solution for Problem 4 using the data included in the
# R Markdown file.

# %% name="problem_4_data" tags=["remove_cell"]
set.seed(5678)
var1 <- rnorm(10, 25, 5)

names <- letters[1:10]

dat4 <- tibble(names, var1)

# %% name="problem_4" tags=["remove_input"]

# %% [markdown]
# ## Problem 5
#
# Create the figure in the solution for Problem 5 using the data included in the
# R Markdown file.

# %% name="problem_5_data" tags=["remove_cell"]
set.seed(13)
var1 <- rnorm(10, 25, 5)

names <- letters[1:10]

dat5 <- tibble(names, var1)

# %% name="problem_5" tags=["remove_input"]

# %% [markdown]
# ## Problem 6
#
# Create the figure in the solution for Problem 6 using the data included in the
# R Markdown file.

# %% name="problem_6_data" tags=["remove_cell"]
set.seed(8)
fiction <- tibble(
    Genre = rep("Fiction", 5),
    Time = seq(1:5),
    Total = sample(1:10, 5)
)

set.seed(7)
biography <- tibble(
    Genre = rep("Biography", 5),
    Time = seq(1:5),
    Total = sample(1:10, 5)
)

set.seed(9)
mystery <- tibble(
    Genre = rep("Mystery", 5),
    Time = seq(1:5),
    Total = sample(1:10, 5)
)

books_checked_out <- bind_rows(fiction, biography, mystery)

# %% name="problem_6" tags=["remove_input"]

# %% [markdown]
# ## Problem 7
#
# Create the figure in the solution for Problem 7 using the data included in the
# R Markdown file.

# %% name="problem_7_data" tags=["remove_cell"]
books_checked_out2 <- books_checked_out %>%
    filter(Time == 1 | Time == 5) %>%
    pivot_wider(names_from = Time, values_from = Total) %>%
    rename(Time1 = `1`, Time5 = `5`)

# %% name="problem_7" tags=["remove_input"] message=false

# %% [markdown]
# ## Problem 8
#
# Create the figure in the solution for Problem 8 using the data included in the
# R Markdown file.

# %% name="problem_8_data" tags=["remove_cell"]
pie_dat <- c(1, 2, 3, 4, 5)

# %% name="problem_8" tags=["remove_input"]
my_color <- brewer.pal(5, "Spectral")
