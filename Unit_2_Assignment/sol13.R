values <- seq(4.8, 0.1, length.out = 6 * 4 * 2)
array_3D <- array(values, dim = c(4,2,6))
new_array <- array_3D[,,1:5]  # Removing the sixth layer
print(new_array)
