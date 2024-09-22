object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    for(i <- 1 to n) {
      val x = io.StdIn.readLine().toInt
      printf("%d\n", x % 2)
    }
  }
}
