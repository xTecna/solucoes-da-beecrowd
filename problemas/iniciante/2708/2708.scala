import scala.util.control.Breaks._

object Main {
  def main(args: Array[String]): Unit = {
    var pessoas = 0
    var jipes = 0

    breakable {
      while (true) {
        val entrada = io.StdIn.readLine().split(" ")
        val palavra = entrada(0)

        if (palavra == "ABEND") {
          break
        }
        if (palavra == "SALIDA") {
          pessoas += entrada(1).toInt
          jipes += 1
        } else {
          pessoas -= entrada(1).toInt
          jipes -= 1
        }
      }
    }

    println(pessoas)
    println(jipes)
  }
}
