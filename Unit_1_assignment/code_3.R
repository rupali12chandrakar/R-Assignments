#Repeat the vector c(-1,3,-5,7,-9) twice, with each element repeated 10 times, and store the result. Display the result sorted from largest to smallest.
vec<- c(-1,3,-5,7,-9)
rep_vec<- rep(vec,times=2,each=10)
print(sort(rep_vec, decreasing=TRUE))
