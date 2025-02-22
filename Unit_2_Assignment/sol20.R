matrix_5x3 <- matrix(1:15, nrow=5, ncol=3, byrow=FALSE)

matrix_5x3[,1] <- sort(matrix_5x3[,1], decreasing=TRUE)
# Calculate the average of the four corner elements
corner_avg <- mean(c(matrix_5x3[1,1], matrix_5x3[1,3], matrix_5x3[5,1], matrix_5x3[5,3]))
# Replace the specified positions with the calculated average
matrix_5x3[2,1] <- corner_avg
matrix_5x3[2,3] <- corner_avg
matrix_5x3[5,1] <- corner_avg
matrix_5x3[5,3] <- corner_avg

print("Updated matrix after replacing specified elements:")
print(matrix_5x3)
