# display the value of pi to 16 significant digits
formatC(pi, digits = 16)

# split these strings into words, removing and commas or hyphens
x = c(
  "Swan swam over the pond, swim swan swim!",
  "Swan swam back again - well swum swan!"
)
strsplit(x, c(",? ", "-? "))

# the adventurer's character attributes is calculated as the sum of the scores from three six-sided dice rolls
# use R to generate the scores and give character bonuses or penalties
# generate 1000 character attribute scores and creat a table of number of scores with different levels of bonus
rm(list = ls())
three_d6 = function(n)
{
  random_n = matrix(
    sample(6, 3*n, replace = TRUE),
    nrow = 3
    )
  colSums(random_n)
}
a = three_d6(1000)
label = c("3", "4,5", "6~8","9~12","13~15","16,17","18")
b = cut(
  a,
  c(3,4,6,9,13,16,18,19),
  include.lowest = TRUE,
  right = FALSE
)
sum_b = as.numeric(table(b))
sum_bonus = sum_b * (-3:3)
df = data.frame(label, sum_b,sum_bonus, order(sum_bonus,decreasing = TRUE))
df
           