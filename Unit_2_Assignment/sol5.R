values <- c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5)
mat <- matrix(values, nrow = 4, ncol = 2, byrow = TRUE)
mat[, 2] <- sort(mat[, 2])

new_mat <- matrix(mat[3:4, ], nrow = 2, ncol = 2)
print(new_mat)
