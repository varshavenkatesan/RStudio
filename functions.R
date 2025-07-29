c()
seq()
seq(from=10, to=20,by=3)
seq(from=10, to=20,length.out=50)

x <- c("a", "b", "c") 
seq(from=10, to=20,along.with=x)


rep()
rep(5:10, 5)
rep(5:10, times= 10)
rep(5:10, each= 10)
rep(x, times= 10)

print(x)

x <- c(3, 45, 90, 180)
is.numeric(x)
is.integer(x)
is.double(x)
is.character(x)

typeof(x)


A <- seq(from=10, to=20,along.with=x)
A
B <- sqrt(A)
B
paste(x)

?rnorm()

rnorm(5)
rnorm(5, 10, 8)

rnorm(n=5, sd=8, mean=100)
rnorm(n=5, sd=8)
