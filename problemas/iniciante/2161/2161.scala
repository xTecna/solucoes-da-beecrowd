object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt

    var resposta = 0.0
    if(n == 0){
      resposta = 3.0
    }else{
      resposta = 6.0
      for (i <- 2 to n) {
        resposta = 6.0 + 1.0 / resposta
      }
      resposta = 3.0 + 1.0 / resposta
    }

    printf("%.10f\n", resposta)
  }
}
