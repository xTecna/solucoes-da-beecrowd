object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt

    var resposta = 0.0
    if(n == 0){
      resposta = 1.0
    }else{
      resposta = 2.0
      for (i <- 2 to n) {
        resposta = 2.0 + 1.0 / resposta
      }
      resposta = 1.0 + 1.0 / resposta
    }

    printf("%.10f\n", resposta)
  }
}
