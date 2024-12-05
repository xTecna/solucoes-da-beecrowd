object Main {
  def main(args: Array[String]): Unit = {
    val precos = Array(0.0, 1.5, 2.5, 3.5, 4.5, 5.5)
    val n = io.StdIn.readLine().toInt
    var valor = 0.0
    for (i <- 0 to (n - 1)) {
      val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
      valor += precos(numeros(0) - 1000) * numeros(1)
    }
    printf("%.2f\n", valor)
  }
}
