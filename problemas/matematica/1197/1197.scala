import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    var entrada: String = null
    while ({ entrada = io.StdIn.readLine(); entrada != null }) {
      var numeros = entrada.split(" ").map(_.toInt)
      var v = numeros(0)
      var t = numeros(1)

      println(v * 2 * t)
    }
  }
}
