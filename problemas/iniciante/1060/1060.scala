object Main {
  def main(args: Array[String]): Unit = {
    var positivos = 0
    for(i <- 1 to 6){
        val numero = io.StdIn.readLine().toFloat
        if(numero > 0){
            positivos += 1
        }
    }

    printf("%d valores positivos\n", positivos)
  }
}
