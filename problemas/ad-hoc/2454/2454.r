input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
p <- entrada[1]
r <- entrada[2]

if(p == 1) {
  if(r == 1) {
    write(paste('A'), '')
  }else{
    write(paste('B'), '')
  }
}else{
  write(paste('C'), '')
}