# creat a list variable that contains all the square numbers in the range 0 to 9 in the first element
# in the range 10 to 19 in the second element, and so on
# up to final element with square number in the range 90 to 99
rm(list = ls())
square_number = list()
for (i in 0:9) {
  a = c()
  for (j in 0:9) {
    sum = i * 10 + j
    if ( as.integer(sqrt(sum)) == sqrt(sum)) {
      a = append(a, sum)
    }
  }
  square_number[[i+1]] = a
} 
square_number[[i+2]] = list(NULL)

# creat a new data frame that consist of the numeric columns of the iris dataset and calculate the means of its columns
rm(list = ls())
df_iris = iris
dfname = c()
for(i in names(df_iris)){
  if (is.numeric(df_iris[[i]])) dfname = append(i, dfname)
}
dfnew = df_iris[dfname]
colMeans(dfnew)

# add a column named id to the beaver 1 dataset, where the value is always 1
# add an id column to beaver2, with value 2
# vertical concatemate the two data frame and find the subset where either beaver is active
rm(list=ls())
b1 = cbind(id = rep(1, times = nrow(beaver1)), beaver1)
b2 = cbind(id = rep(2, times = nrow(beaver2)), beaver2)
bsum = rbind(b1,b2)
bactive = subset(bsum, bsum$activ == 1)
bactive