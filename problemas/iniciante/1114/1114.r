input <- file('stdin', 'r')

senha <- as.integer(readLines(input, n=1))
while (senha != 2002){
    write(paste('Senha Invalida'), '')
    senha <- as.integer(readLines(input, n=1))
}
write(paste('Acesso Permitido'), '')