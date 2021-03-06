# Lesson X: Vocabulary, data structures, and types

# The goal of this lesson is to build up a vocabulary about how R works, as well
# as to understand a little better how data is represented in R. 

# Functions --------------------------------------------------------------------
# Definition
# Functions do things. You already know a bunch of functions: filter, summarize,
# group_by, +, and so on. 

# Syntax
# Functions typically look like this:  functionName(..., ...)
# They can also look like this:        ... + ...

# You "call" a function when you use it. A function "takes" "arguments", where
# "arguments" are the things you put into a function. A function "returns" 
# something, which is what you get you back. 

# Example: filter(my_data, MyColumn > 5)
# In this line, you "call" filter with the arguments "my_data" and 
# "MyColumn > 5". Put another way, the function filter "takes" a data frame and
# conditional statements as arguments. filter "returns" my_data, with all the 
# rows where MyColumn is greater than 5. 

# Example: mutate(my_data, NewColumn = OldColumn + 2)
# 1. What is the name of the function?


# 2. What arguments does the function take? 


# 3. What does the function return? 


# Example: 2 + 3
# 1. What is the name of the function?


# 2. What arguments does the function take? 


# 3. What does the function return? 



# Data structures --------------------------------------------------------------
# A data structure is a tool for holding data. Different kinds of data can be
# represented in different ways. 

# Vectors
# Vectors are the simplest form of data in R. They are simply a sequence of of
# values. For example, 
1:10
# is a vector. You can also make vectors with the c() function: 
c("hello", "I", "am", "a", "vector", "containing", "8", "elements")

# Every element in a vector is the same type. We'll talk more about types when
# you're older.

# Data frames
# We have seen data frames before. They are two-dimensional, having rows and 
# columns. They are square, with every column having the same number of rows. 
zika <- read.csv("Lesson-001/data/zika.csv")

# You can think of a data frame as a collection of vectors (each column is a 
# vector. 

# Matrices
# We haven't seen matrices before, but they're similar to data frames. They are
# also two dimensional and square. You can make a matrix with matrix(): 
matrix(data = 1:16, nrow = 4, ncol = 4)

# The main difference between data frames and matrices is that every element of
# a matrix has to be the same type, while you can have different types for each
# column in a data frame. 

# How many dimensions does a vector have? 


# What is the difference between a matrix and a data frame? 



# Types ------------------------------------------------------------------------
# Everything in R has a type, which tells R what to do with it. Here are some 
# types: 
#     numeric     :  
#     integer     :
#     logical     :
#     character   : 
#     factor      : 

# To find out what something's type is, use str() 
str(1:10)
str(c("a", "b", "c"))
str(c(TRUE, FALSE, FALSE, TRUE))
str(zika)

# Functions will behave differently on different types of data. For example: 
sum(1:10)
sum(c(TRUE, FALSE, TRUE, FALSE))
sum(c("a", "b", "c"))

# The whole point of types is, in fact, to tell functions what to do with the 
# data and to tell R how to store it. This is Very Important for plotting.

# How does mean() behave on each of the types of vectors above? 




# Character vs. factor ---------------------------------------------------------
characterVector <- c("dog", "dog", "cat", "cat", "horse", "cat", "dog", "mouse")
factorVector <- factor(c("dog", "dog", "cat", "cat", "horse", "cat", "dog", "mouse"))

str(characterVector)
str(factorVector)
levels(factorVector)

# factors only expect new data to be one of the levels it already has
c(characterVector, "pony")
c(factorVector, "pony")

# you can specify the order factors should be sorted by
sort(characterVector)
sort(factorVector)

factorVectorFunnyOrder <- 
   factor(c("dog", "dog", "cat", "cat", "horse", "cat", "dog", "mouse"),
      levels = c("mouse", "horse", "cat", "dog"))

sort(factorVectorFunnyOrder)


# make this vector a factor with reverse alphabetical levels and then sort it
c("is", "best", "sean" )





# "Coercing" from one type to another ------------------------------------------
# All elements of a vector or matrix need to be the same type. All elements of 
# a single column of a data frame need to be the same type. Given mixed types,
# R will automatically "coerce" all the values to be the same type, which is 
# typically the lowest common denominator. 
c(1, "a", TRUE) 
# becomes character, because all the values can be represented as text

str(c(1, "a", TRUE))

# To do your own coercion, use the as.* functions
as.character(1:10)
as.logical(0:10)
as.factor(1:10)

# If you try to force something to be a type that doesn't make sense, you'll get
# an NA (missing values) and a warning message
as.numeric(c(1, "a", TRUE))

# Which types can you convert the following vectors to without getting errors? 
c("hello", "I'm", "a", "character", "vector")
c(TRUE, FALSE, FALSE, TRUE, FALSE == TRUE, TRUE & TRUE)
c(9.23, pi, 12E6, 839.8293, -7, -Inf)




# Homework ----------------------------------------------------------
# 1. For each of the following function calls, write down: 
#     a: the name of the function
#     b: what the arguments are
#     c: what the function returns
   sum(1:10)
   # a: 
   # b: 
   # c: 
   as.numeric(c(1, "a", TRUE))
   # a: 
   # b: 
   # c: 
   summarize(zika, TotalViralLoad = sum(ViralLoad))
   # a: 
   # b: 
   # c: 
   2 > 5
   # a: 
   # b: 
   # c: 

# 2. What are two examples of data structures? What are some differences between
#    them? 
   

   
# 3. What is the difference between numeric and integer types? 
   
   

# 4. What is the difference between factor and character types? 
   
   

# 5. What type will the following vector have?  
c(14, 75, "dog", "horse", TRUE, 7, 10E6-17)
#    Make it into numeric, factor, and logical types.



