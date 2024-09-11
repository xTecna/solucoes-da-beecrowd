object Main {
  def main(args: Array[String]): Unit = {
    var pares = 0
    for(i <- 1 to 5){
        val numero = io.StdIn.readLine().toInt
        if(numero % 2 == 0){
            pares += 1
        }
    }

    printf("%d valores pares\n", pares)
  }
}
