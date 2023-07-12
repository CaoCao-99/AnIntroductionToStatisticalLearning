#Basic Commands
x <- c(1,2,3,4) #make array
length(x)
y <- c (2,3,4,5)
y+x
ls() # -> list
rm(x,y) # -> remove

# Matrix
outMatrix <- matrix(data = c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
outMatrix <- matrix(c(1,2,3,4), 2,2, byrow = TRUE)

sqrt(outMatrix) # root

outMatrix^2 # Square

x <- rnorm(50) # Make vector(normal variable by size = 50)
y <- x + rnorm(50, mean = 50, sd = .1) #set mean and standard deviation
cor(x,y)

set.seed(1303) # -> Set random variable
y <- rnorm(100)
mean(y)
var(y)  #Variance of y
sqrt(var(y)) #sd
sd(y)       #sd


#Graphics
x <- rnorm(100)
y <- rnorm(100)
plot(x,y, xlab = "X - axis", ylab = "Y - axis", main = "Plotting X and Y")

pdf("Figure.pdf") #Make pdf file name "Figure"
plot(x,y, col = "green")
dev.off()

jpeg("Figure.jpg") #Make pdf file name "Figure"
plot(x,y, col = "green")
dev.off()

#Seq = range
x <- seq(1,10)
x <- seq(-pi, pi, length = 50) #-pi ~ pi (length)

y <- x
f <- outer(x, y, function(x,y) cos(y) / (1 + x^2))  #f =
contour(x,y,f)
contour(x,y,f,nlevels = 10, add = T)    # add -> Add it to the previous one
fa <- (f - t(f)) / 2
contour(x,y,fa,nlevels = 15)



image(x,y,fa)   #using color



persp(x,y,fa)   #can check the 3d graph by adjusting the values of x, y, and f. 
persp(x,y,fa,theta = 30) #adjust theta
persp(x,y,fa,phi = 30) #adjust phi
persp(x,y,fa,theta = 30 , phi = 30) #adjust theta and phi(rotate view point)

#Indexing Data
A <- matrix(1:16,4,4)
A <- matrix(1:16,4,4, byrow = TRUE)

A[0:4, ]
     [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12
[4,]   13   14   15   16

A[0:4]
[1]  1  5  9 13

A[-1, ]

[,1] [,2] [,3] [,4]
[1,]    5    6    7    8
[2,]    9   10   11   12
[3,]   13   14   15   16

dim(A)

#Loading Data
auto <- read.table("Auto.data")
View(auto)
head(auto)

auto <- read.table("Auto.data", header = T, na.strings = "?", stringsAsFactors = T) # -> T == TRUE 
View(auto)
names(auto)

dim(auto)
auto <- na.omit(auto)

