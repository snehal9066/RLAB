series<-function(len){
  if(len==1)
    return(1)
  sum=0
  for(i in 1:len){
    num=i
    deno=(2*i-1)
    term=num/deno
    if(i%%2==0){
      term=-term
    }
    sum<-sum+term
  }
  return(sum)
}
len<-as.numeric(readline(prompt="Enter the number of terms:"))
sum<-series(len)
cat("The sum of the series 1-2/3+3/5-4/7+.... is ",sum)
