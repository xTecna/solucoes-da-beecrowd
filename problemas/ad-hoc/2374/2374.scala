object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    val m = io.StdIn.readLine().toInt

    printf("%d\n", n - m)
  }
}
