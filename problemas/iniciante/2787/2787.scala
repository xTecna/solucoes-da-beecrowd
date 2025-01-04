object Main {
  def main(args: Array[String]): Unit = {
    val l = io.StdIn.readLine().toInt
    val c = io.StdIn.readLine().toInt
    printf("%d\n", 1 - ((l % 2) ^ (c % 2)))
  }
}
