#section 3-3 randomly generate 1000 pets from the choices "dog","cat","hamster","goldfish"
# Display the first few values of the resultant variable
# count the number of each type of pet
pet_name = sample(
  c("dog","cat","hamster","goldfish"),
  1000,
  replace = TRUE
)
str(pet_name)
pet_factor = as.factor(pet_name)
summary(pet_factor)

#section 3-3
#creat some vegetables named after vegetables.
# list the name of all the variables in the user workspace that contain the letter "a"
rm(list = ls())
beetroot = 1:5
bell_pepper = letters[1:3]
cabbage = matrix(1:12, nrow=3, byrow = TRUE)
carrot = list(
  seq_num = 1:5,
  rnum = runif(10,2,3)
)
cauliflower = sample(c(TRUE, FALSE),7,replace = TRUE)
celery = 1:7
eggplant = as.factor(LETTERS[1:7])
potato = data.frame(cauliflower,celery,eggplant)
ls(pattern = "a")

