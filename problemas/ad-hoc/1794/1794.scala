object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    
    var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val la = entrada(0)
    val lb = entrada(1)
    
    entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val sa = entrada(0)
    val sb = entrada(1)

    if (la <= n && n <= lb && sa <= n && n <= sb) {
      printf("possivel\n")
    } else {
      printf("impossivel\n")
    }
  }
}
