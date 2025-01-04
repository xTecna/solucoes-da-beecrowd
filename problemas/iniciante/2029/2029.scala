object Main {
  def main(args: Array[String]): Unit = {
    var entrada: String = null
    val pi = 3.14
    while ({ entrada = io.StdIn.readLine(); entrada != null }) {
      val v = entrada.toFloat
      val d = io.StdIn.readLine().toFloat / 2.0

      val area = pi * d * d
      val altura = v / area

      printf("ALTURA = %.2f\n", altura)
      printf("AREA = %.2f\n", area)
    }
  }
}
