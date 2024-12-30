input <- file('stdin', 'r')

valor <- function(digito) {
    if (digito <= 57) {
        return(digito - 48)
    } else {
        return(digito - 65 + 10)
    }
}

convertePraDecimal <- function(letra) {
    resposta <- 0
    for (i in 1:nchar(letra)) {
        resposta <- 16 * resposta + valor(utf8ToInt(substr(letra, i, i)))
    }
    return(resposta)
}

n <- as.integer(readLines(input, n=1))
entrada <- strsplit(readLines(input, n = 1), ' ')[[1]]

resposta <- ""
for (i in 1:n) {
    resposta <- paste(resposta, intToUtf8(convertePraDecimal(entrada[i])), sep='')
}
write(paste(resposta), '')