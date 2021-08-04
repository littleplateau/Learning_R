# write a function accepts a vector of integer and return a logical vector
# when the input is even, it reterns TRUE
# when the input is odd, it returns FALSE
# when the input is non-infinite, it returns NA
a = vector(mode = "logical")
num_judge = function(n){
  if (is.infinite(n)) 
  {
    a = NA
  } else {
    if ((n / 2) == as.integer(n / 2))
    {
      a =TRUE
    } else a = FALSE
  }
}
c = c(floor(rnorm(10, 0,3)), Inf)
c
sapply(c, num_judge)

