object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
    var dois = 0
    var tres = 0
    var quatro = 0
    var cinco = 0
    for(i <- 0 to (n - 1)) {
      if (numeros(i) % 2 == 0) {
        dois += 1
      }
      if (numeros(i) % 3 == 0) {
        tres += 1
      }
      if (numeros(i) % 4 == 0) {
        quatro += 1
      }
      if (numeros(i) % 5 == 0) {
        cinco += 1
      }
    }
    printf("%d Multiplo(s) de 2\n", dois)
    printf("%d Multiplo(s) de 3\n", tres)
    printf("%d Multiplo(s) de 4\n", quatro)
    printf("%d Multiplo(s) de 5\n", cinco)
  }
}
