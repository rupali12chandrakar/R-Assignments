values <- c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5)
mat <- matrix(values, nrow = 4, ncol = 2, byrow = TRUE)
mat[, 2] <- sort(mat[, 2])

result <- matrix(mat[-4, -1], ncol = 1)
print(result)
