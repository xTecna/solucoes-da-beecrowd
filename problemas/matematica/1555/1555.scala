object Main {
  def r(a: Int, b: Int): Int = {
    (9 * a * a) + (b * b)
  }

  def b(a: Int, b: Int): Int = {
    2 * (a * a) + (25 * b * b)
  }

  def c(a: Int, b: Int): Int = {
    -100 * a + (b * b * b)
  }

  def main(args: Array[String]) {
    val n = io.StdIn.readLine().toInt
    for(i <- 1 to n) {
      val entrada = io.StdIn.readLine().split(" ")
      val x = entrada(0).toInt
      val y = entrada(1).toInt

      val rafael = r(x, y)
      val beto = b(x, y)
      val carlos = c(x, y)

      if(rafael > beto && rafael > carlos) {
        printf("Rafael ganhou\n")
      } else if(beto > rafael && beto > carlos) {
        printf("Beto ganhou\n")
      } else {
        printf("Carlos ganhou\n")
      }
    }
  }
}
