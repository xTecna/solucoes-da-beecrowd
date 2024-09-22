import scala.util.control.Breaks._

object Main {
  def converteParaDecimal(n: String): Int = {
    var resposta = 0
    var potencia = 0
    val fatoriais = Array(1, 2, 6, 24, 120)

    for (i <- (n.length() - 1) to 0 by -1) {
      resposta += (n(i).toInt - '0'.toInt) * fatoriais(potencia)
      potencia += 1
    }

    resposta
  }

  def main(args: Array[String]): Unit = {
    breakable {
      while (true) {
        val n = io.StdIn.readLine()
        if (n == "0") {
          break
        }
        printf("%d\n", converteParaDecimal(n))
      }
    }
  }
}
