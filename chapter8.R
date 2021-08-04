# generate a craps score and assign values to the Variables game_status and point
two_d = function(n)
{
  random_number = matrix(
    sample(6, 2*n, replace = TRUE),
    nrow = 2
  )
  colSums(random_number)
}
a = two_d(1)
game_status = c()
point = c()
if (a == 2 | a==3 | a== 11)
  {
    game_status =  FALSE
    point = NA
  } else if (a == 7 | a == 12){
    game_status = TRUE
    point =  NA
  } else {
    game_status =  NA
    point = a
  }
(final = c(a, game_status, point))

# if the shooter does not immediately win or lose
# he must keep rolling the dice until he scores the point value and win, or scores a 7 and loses
if (is.na(game_status))
{
  repeat{
    a = two_d(1)
    print(a)
    if (a == point){
      game_status = TRUE
      message("You win")
      break
    } else if (a == 7) {
      game_status = FALSE
      message("You lose")
      break
    }
  }
} else {
  ifelse(game_status == TRUE, "You already win", "You already lose")
} 

# loop over possible word lengths, displayinf a message about words have that length.
sea_shell = c(
  "She sells sea shells by the seashore",
  "The shells she sells are surely seashells",
  "So if she sells shells on the seashore",
  "I'm sure she sells seashore shells"
)
vec_sea = unlist(strsplit(tolower(sea_shell), " "))
n_sea = c()
list_sea = list()
for (i in seq_along(vec_sea))
{
  if (i == 1) {
    list_sea[[1]] = vec_sea[1]
    n_sea = nchar(vec_sea[1])
  } else {
    a = nchar(vec_sea[i])
    for (j in seq_along(n_sea))
    {
      if (a == n_sea[j]) {
        list_sea[[j]] = append(list_sea[[j]], vec_sea[i])
        break
      } else if (j == length(n_sea)) {
        list_sea[[j+1]] = vec_sea[i]
        n_sea = append(n_sea, a)
      }
    }
  }
}
new_list = lapply(list_sea, unique)
for (i in seq_along(new_list))
{
  cat(new_list[[i]], "has", n_sea[i], "letters\n")
}