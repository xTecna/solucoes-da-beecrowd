object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    for(i <- 1 to n) {
      printf("%d %d %d\n", i, i * i, i * i * i)
      printf("%d %d %d\n", i, i * i + 1, i * i * i + 1)
    }
  }
}
