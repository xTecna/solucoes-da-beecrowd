object Main {
  def main(args: Array[String]) {
    val n = io.StdIn.readLine().toInt
    
    for(i <- 0 to n - 1) {
      val entrada = io.StdIn.readLine().split(" ")
      val altura = entrada(0).toInt
      val espessura = entrada(1).toInt
      val galhos = entrada(2).toInt

      if(200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos) {
        println("Sim")
      } else {
        println("Nao")
      }
    }
  }
}
