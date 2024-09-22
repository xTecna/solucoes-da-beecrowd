object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    for (i <- 1 to n) {
      val entrada = io.StdIn.readLine().split(" ")
      val x = entrada(0).toInt
      val y = entrada(1).toInt
      
      printf("%d cm2\n", (x * y) / 2)
    }
  }
}
