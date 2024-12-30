input <- file('stdin', 'r')

desenhaTriangulo <- function(tamanho, deslocamento) {
    asteriscos <- 1
    espacos <- tamanho %/% 2 + deslocamento
    while(asteriscos <= tamanho) {
        linha <- paste0(paste(rep(' ', espacos), collapse=''), paste(rep('*', asteriscos), collapse=''))
        write(paste(linha), '')

        asteriscos <- asteriscos + 2
        espacos <- espacos - 1
    }
}

while (TRUE) {
    tryCatch({
        linha <- readLines(input, n = 1)

        if (length(linha) > 0) {
            n <- as.integer(linha)
            desenhaTriangulo(n, 0)
            desenhaTriangulo(3, n %/% 2 - 1)
            cat('\n')
        } else {
            break
        }
    }, error = function(e) {
        break
    })
}