# Reproducible workflows with {drake}
# Bioinformatics London Meetup, 2020-01-30
# This is a script file containing the code from the talk slides
# Slides available here: https://matt-dray.github.io/drake-bioinformatics/

# Packages ----------------------------------------------------------------

library(drake)
library(dplyr)
library(ggplot2)
library(rphylopic)

# Functions ---------------------------------------------------------------

# Simple beaver plot
b_plot <- function(data, image) {
  ggplot(data, aes(id, temp)) +
    geom_boxplot() +
    labs(title = "Beaver temperature") +
    add_phylopic(image)
}

# Simple beaver summary table
b_table <- function(data) {
  beavers_trim <- data %>% 
    group_by(id) %>% 
    summarise(
      mean = mean(temp), sd = sd(temp),
      min = min(temp, max = max(temp))
      ) %>% ungroup()
  return(beavers_trim)
}

# Plan --------------------------------------------------------------------

# Wrap analysis steps in drake_plan()
plan <- drake_plan(
  # wrangle data
  b1 = mutate(beaver1, id = "A"),
  b2 = mutate(beaver2, id = "B"),
  beavers = bind_rows(b1, b2),
  # phylopic image
  uid = "be8670c2-a5bd-4b44-88e8-92f8b0c7f4c6",
  png = image_data(uid, size = "512")[[1]],
  # outputs
  plot = b_plot(beavers, png),
  table = b_table(beavers),
  report = rmarkdown::render(
    knitr_in("beavers-report.Rmd"), quiet = TRUE,  # note knitr_in()
    output_file = file_out("beaver-report.html")  # note file_out()
  )
)

# Make --------------------------------------------------------------------

drake::make(plan)  # executes the analysis steps in the plan

# Inspection --------------------------------------------------------------

# Get cached objects
cached()  # check what's in the cache
readd()  # return an object from the cache

# Create network graph
config <- drake_config(plan)  # make a configuration file for the plan
vis_drake_graph(config)  # build an interactive network graph using the config

# Make changes ------------------------------------------------------------

# Let's say something in your workflow changed. What is now out of date?

outdated()  # prints the targets that are out of date

vis_drake_graph(config)  # rebuild grpah to see impacted targets coloured black

drake::make(plan)  # re-make the plan!