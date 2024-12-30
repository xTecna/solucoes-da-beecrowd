input <- file('stdin', 'r')

mdc <- function(a, b) {
    if (b == 0) {
        return(a)
    }
    return(mdc(b, a %% b))
}

while (TRUE) {
    tryCatch({
        linha <- readLines(input, n = 1)

        if (length(linha) > 0) {
            entrada <- as.integer(strsplit(linha, ' ')[[1]])
            x <- entrada[1]
            y <- entrada[2]

            write(paste(2 * (x/mdc(x, y) + y/mdc(x, y))), '')
        } else {
            break
        }
    }, error = function(e) {
        break
    })
}