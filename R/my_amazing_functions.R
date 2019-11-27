####  fit GLM plot ####

FUNglm <- function(x) {
  glm(x ~ temperature_std +
    precipitation_std +
    tree_cover_std +
    flowering_std,
  data = data_set,
  family = binomial())
}



###Plotting ####

FUNplot <- function(x, species_no, ...) {
  plot_values <- predict(x, newdata = plot_data, type = "response")
  precip_actual <- precip_seq * sd(data_set$precipitation_mm) + mean(data_set$precipitation_mm)
  plot(plot_values ~ precip_actual,
       type = "l",
       bty = "l",
       las = 1,
       lwd = 2.5,
       ylim = c(0, 1),
       xlab = "Precipitation (mm)",
       ylab = "Probabiliy of occurrence", ...)
  mtext(species_no, side = 3, line = 0.5, adj = 0.02, cex = 1.5)
}



## if we put ... at the end of a function you can continue to add in extra bits: eg colour, labels etc
