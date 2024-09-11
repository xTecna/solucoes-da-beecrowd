object Main {
  def somaPA(a1: Long, an: Long, n: Long): Long = {
    return ((a1 + an) * n)/2
  }

  def main(args: Array[String]): Unit = {
    val numeros = io.StdIn.readLine().split(" ").map(_.toLong)
    val a = numeros(0)
    var i = 1
    while(numeros(i) <= 0) {
      i += 1
    }
    val n = numeros(i)
    printf("%d\n", somaPA(a, a + n - 1, n))
  }
}
