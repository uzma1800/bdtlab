data()
head(mtcars)
 # Number of rows (observations)
rownum <- nrow(mtcars)
# Number of columns (variables)
colnum <- ncol(mtcars)
print(rownum)
print(colnum)
x<- data.frame(mtcars)
automatic <-0 
manual <-0
for (i in 1:rownum)
  ifelse( x[i,9] == 1, automatic <- automatic + 1, manual <- manual +1)
  ifelse (automatic > manual,
        print("There are more automatic transmission type"),
        print("There are more manual transmission type") )

#//The scatter plot
HorsePower <- x[,4]
Weight <- x[,6]
scatter.smooth(HorsePower,Weight, span=2/3, degree = 1, family =c("symmetric","gaussian"))


