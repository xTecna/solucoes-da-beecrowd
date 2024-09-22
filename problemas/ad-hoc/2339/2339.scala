object Main {
  def main(args: Array[String]): Unit = {
    val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val c = entrada(0)
    val p = entrada(1)
    val f = entrada(2)

    if(p >= c * f) {
      printf("S\n")
    } else {
      printf("N\n")
    }
  }
}
