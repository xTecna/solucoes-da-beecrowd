object Main {
  def main(args: Array[String]): Unit = {
    var n = io.StdIn.readLine().toInt
    while (n != 0){
      var jogador1 = 0
      var jogador2 = 0

      for (i <- 1 to n){
        val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        val a = entrada(0)
        val b = entrada(1)

        if (a > b) {
          jogador1 += 1
        } else if (a < b) {
          jogador2 += 1
        }
      }

      printf("%d %d\n", jogador1, jogador2)
      
      n = io.StdIn.readLine().toInt
    }
  }
}
