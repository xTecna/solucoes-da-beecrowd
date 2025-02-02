object Main {
  def main(args: Array[String]): Unit = {
    val t = io.StdIn.readLine().toInt
    for (k <- 1 to t) {
      val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
      val d = entrada(0)
      val i = entrada(1)
      val b = entrada(2)

      val precos = io.StdIn.readLine().split(" ").map(_.toInt)

      var resposta = 0
      for (m <- 1 to b) {
        var bolo = io.StdIn.readLine().split(" ").map(_.toInt)
        bolo = bolo.drop(1)

        var custo = 0
        for (j <- 0 until bolo.size by 2) {
          custo += precos(bolo(j)) * bolo(j + 1)
        }
        resposta = math.max(resposta, d / custo)
      }

      printf("%d\n", resposta)
    }
  }
}
