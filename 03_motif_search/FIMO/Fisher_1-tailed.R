argv <- commandArgs(TRUE)
N <- as.numeric(argv[1])
K <- as.numeric(argv[2])
n <- as.numeric(argv[3])
k <- as.numeric(argv[4])
a <- as.character(argv[5])

#cat(N,'\n')

tab<-matrix(c(k,K-k,n-k,N-K-(n-k)),2)
Fisher=fisher.test(tab,alt=a)
cat(Fisher$p.value)
