#Convert the temperature readings 32, 68, 14, 0, 113, 104, and 198 degrees Fahrenheit to Celsius using the formula C = 5/9 * (F - 32). How can you apply this conversion in a vectorized manner in R?
F_temps <- c(32, 68, 14, 0, 113, 104, 198)
C_temps <- 5/9 * (F_temps - 32)
print(C_temps)
