N <- 10
SumX <- 0
while(N < 100000)
{
  for(i in 1:N)
  {
    x <- rnorm(1)
    if(x > - 1 & x < 1)
    {
      SumX <- SumX + 1
    }
  }
  xbar <- SumX / N
  print(paste("N =", N, "Xbar =", xbar))
  print(paste("|Xbar - E(X)| =", abs(xbar - 0.68)))
  SumX <- 0
  xbar <- 0
  N <- 10 * N
}
