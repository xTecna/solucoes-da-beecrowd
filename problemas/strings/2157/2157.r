input <- file('stdin', 'r')

c <- as.integer(readLines(input, n=1))

resposta <- ''
for(i in 1:c) {
    entrada <- as.double(strsplit(readLines(input, n = 1), ' ')[[1]])
    b <- entrada[1]
    e <- entrada[2]

    resposta <- paste(b:e, collapse='')
    resposta <- paste0(resposta, intToUtf8(rev(utf8ToInt(resposta))))

    write(paste(resposta), '')
}