
#inputs x = vector

scaledat<- function(x) {
  (x - mean(x))/sd(x)
}


## you can add in default values for some variables, which you can change when 
## calling the function, but you don't have to
scaledat<- function(x, na.rm = TRUE) {
  (x - mean(x, na.rm = na.rm))/sd(x, na.rm = na.rm)
}

## Or you can add a bit to pass any argument to it
scaledat<- function(x, ...) {
  (x - mean(x, ...))/sd(x, ...)
}
