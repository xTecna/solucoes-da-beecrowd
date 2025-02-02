object Main {
  def main(args: Array[String]) {
    var entrada = io.StdIn.readLine().split(" ")
    val n = entrada(0).toInt
    val x = entrada(1).toInt
    val y = entrada(2).toInt

    printf("%.2f\n", n.toFloat/(x + y))
  }
}
