input <- file('stdin', 'r')

while (TRUE) {
  tryCatch({
    entrada <- readLines(input, n = 1)

    if (length(entrada) > 0) {
      n <- as.integer(entrada)

      for(i in 0:(n-1)){
        resposta <- ''
        for(j in 0:(n-1)){
          if(i == n - 1 - j){
            resposta <- paste(resposta, '2', sep='')
          }else if(i == j){
          resposta <- paste(resposta, '1', sep='')
          }else{
          resposta <- paste(resposta, '3', sep='')
          }
        }
        write(paste(resposta), '')
      }
    } else {
      break
    }
  }, error = function(e) {
    break
  })
}
