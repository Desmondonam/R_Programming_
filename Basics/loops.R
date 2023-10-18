#Comparison Operators 
'''
== Equality 
!= inequality
> greater than
< less than
>= Greater than or equal to
<= Less than or equal to



'''




# If Else statement
a <- 20
b <- 20

if (b > a) {
  print("b is greater than a ")
} else if (a == b) {
  print("a and b are equal")
}

# Else if statement 

# Nested if else statement
a <- 200
b <- 30
if (b > a) {
  print("b is greater than a")
}else if (a == b){
  print('a and b are equal')
}else {
  print('a is greater than b')
}
### While loops
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

## Break 
i <- 1
while (i < 6){
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}
# Another example
x <- 1
# Create a while loop
while (x <= 10) {
  print(x)
  
  # Increment
  x <- x + 1
  if (x > 5) {
    # Exit from the loop 
    break
  }
}

## Next

i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

# FOr Loops 
for (x in 1:10) {
  print(x)
}


fruits <- list("Apple","Banana", "Cherry", "Orange", "Pawpaw")

for (x in fruits) {
  print(x)
  
}






