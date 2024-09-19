object Main {
  def main(args: Array[String]): Unit = {
    var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    var l = entrada(0)
    var r = entrada(1)
    while (l != 0 || r != 0) {
      printf("%d\n", l + r)
      
      entrada = io.StdIn.readLine().split(" ").map(_.toInt)
      l = entrada(0)
      r = entrada(1)
    }
  }
}
