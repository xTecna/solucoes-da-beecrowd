object Main {
  def main(args: Array[String]): Unit = {
    val t = io.StdIn.readLine().toInt
    for (i <- 1 to t) {
      val n = io.StdIn.readLine().toInt
      printf("%d\n", (1 << n) - 1)
    }
  }
}
