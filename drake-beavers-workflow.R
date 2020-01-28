library(drake)
library(dplyr)
library(ggplot2)
library(rphylopic)

b_plot <- function(data, image) {
  ggplot(data, aes(id, temp)) +
    geom_boxplot() +
    labs(title = "Beaver temperature") +
    add_phylopic(image)
}
b_table <- function(data) {
  beavers_trim <- data %>% 
    group_by(id) %>% 
    summarise(
      mean = mean(temp), sd = sd(temp),
      min = min(temp, max = max(temp))
      ) %>% ungroup()
  return(beavers_trim)
}

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
    knitr_in("beavers-report.Rmd"), quiet = TRUE,
    output_file = file_out("beaver-report.html")
  )
)

drake::make(plan)