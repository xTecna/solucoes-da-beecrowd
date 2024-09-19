object Main {
  def somaPA(a1: Long, an: Long, n: Long): Long = {
    return ((a1 + an) * n)/2
  }

  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toLong
    for(i <- 1 to n.toInt) {
      val numeros = io.StdIn.readLine().split(" ").map(_.toLong)
      var x = numeros(0)
      val y = numeros(1)

      x += 1 - (x % 2)

      printf("%d\n", somaPA(x, x + 2 * (y - 1), y))
    }
  }
}
