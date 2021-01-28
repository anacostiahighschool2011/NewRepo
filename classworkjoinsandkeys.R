
library(tidyverse)
library(dplyr)

diamonds

diamonds%>%
  count(x,y,z,depth)%>%
filter(n>1)


# 1
starwars

starwars%>%
  count(name)%>%
  filter(n>1)


# 2
diamonds%>%
  count(x,y,z)%>%
  filter(n>1)

# 3

df1<- tribble(
  ~CustomerId,  ~Product,
        1,        "Oven",
        2,        "Television",
        3,        "Mobile",
        4,        "WashingMachine",
        5,        "Lightings",
        6,        "Ipad"
)
df1


df2<- tribble(
  ~CustomerId,  ~State,
  2,        "California",
  4,        "Newyork",
  6,        "Santiago",
  7,        "Texas",
  8,        "Indiana"
)
df2


df1%>%
  
  left_join(df2,  by = "CustomerId")

df1%>%
  right_join(df2,  by = "CustomerId")

df1%>%
  inner_join(df2,  by = "CustomerId")

df1%>%
  full_join(df2,  by = "CustomerId")



  state
sleep

sleep%>%
  count(ID,extra,group)%>%
  filter(n>1)

cars
trees
as_tibble(trees)->tt
tt
tt%>%
  count(Girth,Volume)%>%
  filter(n>1)

faithful
PlantGrowth

mtcars
is_tibble(mtcars)

as_tibble(mtcars)-> mtct
mtct

mtct%>%
  count(disp,mpg,wt)%>%
  filter(n>1)


q()
y
