# the nth triangular number is given by n*(n+1)/2
# creat a sequence of the first 20 triangular number and name the elements of the vector with the first 20 letters of the alphabet
rm(list = ls())
tri_num = (1:20)*((1:20)+1)/2
names(tri_num) = letters[1:20]
tri_num

# creat a Wilkinson matrix and calculate the eigenvalues for the matrix
rm(list = ls())
m1 = diag(x = c(10:1,0:10))
m2 = rbind(rep(0,times = 21), diag(1, 20, 21))
m3 = cbind(rep(0,times = 21), diag(1, 21, 20))
wilk_matrxi = m1 + m2 + m3
eigen(wilk_matrxi)