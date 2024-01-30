# This is an introduction to R - I am doing this by starting at the beginning,
# and going back to basics in R in order to organize and categorize my learning
# in R and become more proficient.


# ----------------------------------------------------------------------------
# Section 1.1 - Basic Mathematical Operators
# ----------------------------------------------------------------------------

# In this section we will use R to calculate numerical values.

# Addition +
# Subtraction -
# Multiplication *
# Division /

# ----------------------------------------------------------------------------
# Addition
# ----------------------------------------------------------------------------

1 + 1
-250 + 35 + 20 +15 + 5 + 1
678.5 + 4.356 + 19.21 + 3.5

# ----------------------------------------------------------------------------
# Subtraction
# ----------------------------------------------------------------------------

9 - 2
345.88 - 14.5 - 18.21
-354 - -458

# ----------------------------------------------------------------------------
# Multiplication
# ----------------------------------------------------------------------------

9 * 5
400 * 1893
12.5 * -28

# ----------------------------------------------------------------------------
# Division
# ----------------------------------------------------------------------------

12 / 3
-180 / 45
1.568 / 38

# ----------------------------------------------------------------------------


# ----------------------------------------------------------------------------
# Section 1.2 - Creating Comments
# ----------------------------------------------------------------------------

# A comment is preceded by a # and tells you to ignore the following line.

# You can create comments that tell you what the following line does or to show
# you errors in previous code with the new working code listed underneath

# ----------------------------------------------------------------------------
# Create comments
# ----------------------------------------------------------------------------

# This is a comments

# This code will calculate a total volume from our individual measured volumes

volume1 <- 35.8
volume2 <- 44.9
volume3 <- 162.2

total_volume <- volume1 + volume2 + volume3
print(total_volume)

# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Section 1.3 - Data Types
# ----------------------------------------------------------------------------

# Data types are used to classify data according to their properties.

# Here are some different data types:
# Numeric
# Character
# Logical
# Vector
# NA

# ----------------------------------------------------------------------------

# Numeric: Any number with or without a decimal point: 23, 0.03 and the numeric 
# null value NA.

0.3
56789
NA
180

# ----------------------------------------------------------------------------

# Character: Any grouping of characters on your keyboard 
# (letters, numbers, spaces, symbols, etc.) or text. Most strings are 
# surrounded by single quotes: ' ... ' or double quotes " ... ", though we 
# prefer single quotes. Sometimes you will hear this type 
# referred to as “string.”

'This is a string'
'This is also a string'
'Tuesday'

# ----------------------------------------------------------------------------

# Logical: This data type only has two possible values— either TRUE or FALSE 
# (without quotes). 
# It’s helpful to think of logical types or booleans as on and off switches 
# or as the answers to a “yes” or “no” question.

verify(TRUE)
class(FALSE)

# ----------------------------------------------------------------------------

# Vectors: A list of related data that is all the same type.

vector1 <- c(1,2,3,4,5)
vector2 <- c(6,7,8,9,10)

vector1 + vector2

# Note - division and multiplcation of vectors in not concurrent with Linear
# Algebra, R only multiplies and divides the corresponding elements
#For example

vector1 * vector2
vector1 / vector2

# ----------------------------------------------------------------------------

# NA: This data type represents the absence of a value, and is represented by 
# the keyword NA (without quotes) but it has its own significance in the 
# context of the different types. That is there is a numeric NA, 
# a character NA, and a logical NA.

class('NA')
class(NA)
NA + NA

# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Section 1.4 - Printing Values
# ----------------------------------------------------------------------------

# In order to print a value, you must put the value inside the 
# following syntax: print().

# Print your name as a string
print('Your Name Here')

#Print your age as a numerical type
print(35)

#Print your age as a character type
print('35')

# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Section 1.5 - Variables
# ----------------------------------------------------------------------------

# Now that you know how R classifies some of the basic information types, let’s 
# figure out how to store them. In programming, variables allow us to store 
# information and associate that information with a name. 

# In R, we assign variables by using the assignment operator, 
# an arrow sign (<-) made with a carat and a dash.

# ----------------------------------------------------------------------------

# In the example below, we store the string value “John Smith” in a variable 
# called full_name. Variables can’t have spaces or symbols in their names other 
# than an underscore (_). They can’t begin with numbers but they can have 
# numbers after the first letter (e.g., cool_variable_5 is OK).

full_name <- 'John Smith'
print(full_name)

# It’s no coincidence we call these creatures “variables”. If we need to update 
# a variable but perform the same logical process on it, 
# we can change its value! For example, take the variable message_string:

# Greeting
message_string <- "Hello there"
print(message_string)

# Farewell
message_string <- "Hasta la vista"
print(message_string)

# Above, we create the variable message_string, assign a welcome message, 
# and print the greeting. After we greet the user, we want to wish them goodbye. 
# We then update message_string to a departure message and print that out.

# Note: You can also use = instead of <- to assign a value 
# but R programmers prefer to do it with an arrow.

# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Section 1.6 - Vectors
# ----------------------------------------------------------------------------

# We mentioned Vectors when we introduced data types earlier. In R, vectors are 
# a list-like structure that contain items of the same data type.

# For Example
spring_months <- c("March", "April","May","June")

# In the example above, we created a new variable with the value of a new vector.
# We created this vector by separating four character strings with a comma 
# and wrapping them inside c().

# ----------------------------------------------------------------------------

# A few things you should know how to do with vectors:

# You can check the type of elements in a vector by using typeof(vector_name)

# You can check the length of a vector by using length(vector_name)

# You can access individual elements in the vector by using [] and placing the 
# element position inside the brackets. For example, if we wanted to access the 
# second element we would write: vector_name[2]. 
# Note: In R, you start counting elements at position one, not zero.

# ----------------------------------------------------------------------------

# Create a numeric vector named phone that contains your phone number 
# as three numbers: your area code, the next three digits, 
# and then the last four.

phone <- c(310, 444, 8000)

# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Section 1.7 - Conditionals
# ----------------------------------------------------------------------------

# In R, we will often perform a task based on a condition.

# For example, if we are analyzing data for the summer, then we will only want 
# to look at data that falls in June, July, and August.

# We can perform a task based on a condition using an if statement:

if (TRUE) {
  print('This message will print!')
} 

# Notice in the example above, we have an if statement. 
# The if statement is composed of:

# The if keyword followed by a set of parentheses () which is followed by a 
# code block, or block statement, indicated by a set of curly braces {}.

# Inside the parentheses (), a condition is provided that evaluates 
# to TRUE or FALSE.

# If the condition evaluates to true, the code inside the curly braces {} 
# runs, or executes.

# If the condition evaluates to false, 
# the code inside the block won’t execute.

# Knowing how to use if statements will help you introduce logic in your 
# data analysis. There is also a way to add an else statement. 

# An else statement must be paired with an if statement, 
# and together they are referred to as an if…else statement.

if (TRUE) {
  print("Go to sleep!")
} else {
  print("Wake up!")
}

# In the example above, the else statement:

# Uses the else keyword following the code block of an if statement.

# Has a code block that is wrapped by a set of curly braces {}.

# The code inside the else statement code block will execute when the if 
# statement’s condition evaluates to false. 

# These if…else statements allow us to automate solutions to 
# yes-or-no questions, also known as binary decisions.

# ----------------------------------------------------------------------------

# Create a conditional statement such that it will change the value of the 
# variable message to 'I execute this when true!' when the condition is TRUE, 
# and the value of message to 'I execute this when false!' when it is FALSE.

message <- "I change based on a condition."

if (TRUE) {
  message <- 'I execute this when true!'
} else {
  message <- 'I execute this when false!'
}

# Print the value of message after the if…else statement 
# by using print(message).

print(message)

# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Section 1.8 - Comparison Operators
# ----------------------------------------------------------------------------

# When writing conditional statements, sometimes we need to use different types 
#of operators to compare values. 
#These operators are called comparison operators.

# ----------------------------------------------------------------------------

#Here is a list of some handy comparison operators and their syntax:

# Less than: <
# Greater than: >
# Less than or equal to: <=
# Greater than or equal to: >=
# Is equal to: ==
# Is NOT equal to: !=

# ----------------------------------------------------------------------------

# Comparison operators compare the value on the left with the value on the right. 

# For instance:

10 < 12 # Evaluates to TRUE

# It can be helpful to think of comparison statements as questions. 
# When the answer is “yes”, the statement evaluates to true, 
# and when the answer is “no”, the statement evaluates to false. 

# The code above would be asking: is 10 less than 12? Yes! 
# So 10 < 12 evaluates to true.

# ----------------------------------------------------------------------------

# Use all of the comparison operators to evaluate the numbers 1 and 1000

# Less than: <
1 < 1000

# Greater than: >
1 > 1000

# Less than or equal to: <=
1 <= 1000

# Greater than or equal to: >=
1 >= 1000

# Is equal to: ==
1 == 1000

# Is NOT equal to: !=
1 != 1000