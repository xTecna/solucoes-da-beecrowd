object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    for(i <- 1 to n) {
      if (n % i == 0) {
        printf("%d\n", i)
      }
    }
  }
}
