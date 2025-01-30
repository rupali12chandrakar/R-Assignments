#Store as a third object the values returned by omitting the first and last values of your vector from (6.).
print(vec6 <- c(seq(3, 6, length.out = 5)))
print(vec8 <- vec6[-c(1, length(vec6))])
