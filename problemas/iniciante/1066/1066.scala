object Main {
  def main(args: Array[String]): Unit = {
    var pares = 0
    var impares = 0
    var positivos = 0
    var negativos = 0
      
    for(i <- 1 to 5){
        val numero = io.StdIn.readLine().toInt
        if(numero % 2 == 0){
            pares += 1
        }else{
            impares += 1
        }
        if(numero > 0){
            positivos += 1
        }else if(numero < 0){
            negativos += 1
        }
    }

    printf("%d valor(es) par(es)\n", pares)
    printf("%d valor(es) impar(es)\n", impares)
    printf("%d valor(es) positivo(s)\n", positivos)
    printf("%d valor(es) negativo(s)\n", negativos)
  }
}
