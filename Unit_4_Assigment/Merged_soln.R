# 1. Create a list containing a number, a string, and a logical value
my_list <- list(42, "Hello", TRUE)

# 2. Find the length of a list
length(my_list)

# 3. Extract the first element of a list using single brackets
my_list[1]

# 4. Extract the second element using double brackets
my_list[[2]]

# 5. Name the elements of a list explicitly
my_list <- list(number = 42, text = "Hello", flag = TRUE)

# 6. Access a named element using $
my_list$text

# 7. Create a simple data frame
df <- data.frame(Name = c("Alice", "Bob"), Age = c(25, 30))

# 8. Access age of the second person
df$Age[2]

# 9. Number of rows in data frame
nrow(df)

# 10. Add a new row
df <- rbind(df, data.frame(Name = "Charlie", Age = 28))

# 11. Create a nested list
nested_list <- list(inner_list = list(c(1, 2, 3), c("a", "b", "c")))

# 12. Extract second element from nested list
nested_list$inner_list[[2]]

# 13. Convert character column to factor
df$Name <- as.factor(df$Name)

# 14. Logical subset where Age > 20
subset_df <- df[df$Age > 20, ]

# 15. Add column: Age in months
df$Age_in_Months <- df$Age * 12

# 16. Difference between [ ] and [[ ]]
my_list[1]    # returns a list
my_list[[1]]  # returns the value

# 17. Extract multiple rows and columns
df[c(1,2), c("Name", "Age")]

# 18. Add column using cbind()
new_col <- c("A", "B", "C")
df <- cbind(df, Grade = new_col)

# 19. Exclude a column
df_without_age <- df[ , !(names(df) %in% "Age")]

# 20. Subset rows by specific character value
subset(df, Name == "Bob")

# 21. Merge two lists into nested structure
merge_lists <- function(list1, list2) {
  list(list1 = list1, list2 = list2)
}

# 22. Recycle shorter vectors in data frame
df_recycle <- data.frame(A = 1:4, B = c("x", "y"))
# 'B' is recycled to match length of 'A'

# 23. Data frame from unequal length vectors (no recycling)
library(tibble)
my_list <- list(a = 1:3, b = c("x", "y"))
df <- tibble::tibble(lengths = I(my_list))

# 24. Extract from list with matrix, logical vector, and string
my_list2 <- list(matrix(1:4, nrow=2), c(TRUE, FALSE, TRUE), "Hello")
my_list2[[2]][2]

# 25. Dynamically add named elements
my_list3 <- list()
key <- readline("Enter element name: ")
value <- readline("Enter element value: ")
my_list3[[key]] <- value

# 26. Function to return numeric columns only
subset_numeric <- function(df) {
  df[ , sapply(df, is.numeric)]
}

# 27. Reorder columns alphabetically
df <- df[ , order(names(df))]

# 28. Subset deeply nested list
deep_list <- list(level1 = list(level2 = list(level3 = 99)))
deep_list$level1$level2$level3

# 29. Function to add factor-type column from numeric
add_factor <- function(df) {
  df$AgeGroup <- as.factor(ifelse(df$Age > 25, "Senior", "Junior"))
  return(df)
}

# 30. Subset using multiple logical conditions
subset(df, Age > 25 & Grade == "A")
