generate_password<-function(len){
    password<-""
    all_chars<-intToUtf8(33:126,multiple=TRUE)
    uppercase<-LETTERS
    lowercase<-letters
    numbers<-as.character(0:9)
    special<-setdiff(all_chars,c(uppercase,lowercase,numbers))
    mandatory<-c(sample(uppercase,1),sample(lowercase,1),sample(numbers,1),sample(special,1))
    remaining<-c(sample(c(uppercase,lowercase,numbers,special),len-length(mandatory)))
    password<-paste0(password,sample(c(mandatory,remaining)),collapse="")
    return(password)
}
len<-as.numeric(readline(prompt="Enter the length of the password:"))
if(len>=8){
    pass<-generate_password(len)
    cat("Generated password:",pass)
}else{
    cat("Please enter a valid length")
}
