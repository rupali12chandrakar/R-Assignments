# Construct the original 5x3 matrix
matrix_5x3 <- matrix(1:15, nrow=5, ncol=3, byrow=FALSE)

# Sort only the first column in descending order, keeping other columns unchanged
matrix_5x3[,1] <- sort(matrix_5x3[,1], decreasing=TRUE)

# Print the updated matrix
print("Matrix after sorting the first column in descending order:")
print(matrix_5x3)
