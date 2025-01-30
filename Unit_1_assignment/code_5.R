vec3 <- rep(c(-1, 3, -5, 7, -9), each = 10, times = 2)
sorted_vec3 <- sort(vec3, decreasing = TRUE)
vec4 <- c(6:12, rep(5.3, 3), -3, seq(102, length(sorted_vec3), length.out = 9))
length_vec4 <- length(vec4)
length_vec4 == 20
