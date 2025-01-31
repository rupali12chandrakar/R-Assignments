# 1. Create and store a sequence of values from 5 to -11 in steps of 0.3
seq1 <- seq(5, -11, by = -0.3)

# 2. Overwrite seq1 with the same sequence but reversed
seq1 <- rev(seq1)

# 3. Repeat c(-1,3,-5,7,-9) twice, with each element repeated 10 times, then sort
vec3 <- rep(c(-1,3,-5,7,-9), each = 10, times = 2)
sorted_vec3 <- sort(vec3, decreasing = TRUE)

# 4. Create a complex vector
seq4 <- 6:12
repeat_5_3 <- rep(5.3, 3)
single_val <- -3
seq9 <- seq(102, length(sorted_vec3), length.out = 9)
vec4 <- c(seq4, repeat_5_3, single_val, seq9)

# 5. Confirm length of vec4 is 20
length(vec4) == 20

# 6. Create a specific ordered vector
vec6 <- c(seq(3,6, length.out = 5), rep(c(2,-5.1,-33), 2), 7/42 + 2)

# 7. Extract first and last elements
first_last <- c(vec6[1], vec6[length(vec6)])

# 8. Store all but the first and last elements
middle_vec <- vec6[-c(1, length(vec6))]

# 9. Reconstruct vec6 using (7) and (8)
vec6 <- c(first_last[1], middle_vec, first_last[2])

# 10. Overwrite vec6 with sorted values
vec6 <- sort(vec6)

# 11. Reverse vec6 using indexing and confirm against sort decreasing=TRUE
reversed_vec6 <- vec6[length(vec6):1]
identical(reversed_vec6, sort(vec6, decreasing = TRUE))

# 12. Create a vector from middle_vec that repeats certain elements
vec12 <- c(rep(middle_vec[3], 3), rep(middle_vec[6], 4), middle_vec[length(middle_vec)])

# 13. Copy vec6 and overwrite specific indices
vec13 <- vec6
vec13[c(1,5:7,length(vec13))] <- 99:95

# 14. Convert a specific vector to only 1s
vec14 <- c(2,0.5,1,2,0.5,1,2,0.5,1)
vec14 <- rep(1, length(vec14))

# 15. Convert Fahrenheit to Celsius
f_temps <- c(45, 77, 20, 19, 101, 120, 212)
c_temps <- (5/9) * (f_temps - 32)

# 16. Multiply and repeat vectors
vec16 <- rep(c(2,4,6), each=1) * rep(c(1,2), length.out=6)

# 17. Overwrite the middle four elements with recycled values
vec16[3:6] <- rep(c(-0.1, -100), each=2)

# 18. Create a sequence and reverse it efficiently
seq18 <- seq(10, -20, by = -0.5)
rev_seq18 <- rev(seq18)

# 19. Repeat vector three times and each element five times, then sort
vec19 <- rep(c(-2, 4, -6, 8, -10), times = 3, each = 5)
sorted_vec19 <- sort(vec19)

# 20. Create a complex composite vector
seq20 <- 15:25
rep4_2 <- rep(4.2, 2)
single_minus5 <- -5
seq_12 <- seq(200, length(seq1), length.out = 12)
vec20 <- c(seq20, rep4_2, single_minus5, seq_12)

# 21. Confirm length of vec20
length(vec20) == 25

# 22. Compile a diverse vector in order
vec22 <- c(seq(2,8, length.out = 7), rep(c(3,-4.2,-50), 3), 14/84 + 3)

# 23. Extract first and third elements and reconstruct the original vector
extracted <- vec4[c(1,3)]
reconstructed <- c(extracted[1], vec4[-c(1,3)], extracted[2])

# 24. Replace middle three elements
vec4[(length(vec4)%/%2-1):(length(vec4)%/%2+1)] <- c(-0.5, -200, -0.5)

# 25. Convert a vector into all 2s
vec25 <- rep(2, length(c(3,1,2,3,1,2,3,1,2)))

# 26. Convert another set of Fahrenheit to Celsius
f_temps2 <- c(32, 68, 14, 0, 113, 104, 198)
c_temps2 <- (5/9) * (f_temps2 - 32)

# 27. Multiply vectors and replace elements
vec27 <- rep(c(3,5,7), each=1) * rep(c(2,3), length.out=6)
vec27[3:6] <- rep(c(-1, -150), each=2)
