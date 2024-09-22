object Main {
  def main(args: Array[String]): Unit = {
    val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val c = entrada(0)
    val n = entrada(1)
    printf("%d\n", c % n)
  }
}
