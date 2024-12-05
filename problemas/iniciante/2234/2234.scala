object Main {
  def main(args: Array[String]): Unit = {
    val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
    printf("%.2f\n", numeros(0).toFloat/numeros(1))
  }
}
