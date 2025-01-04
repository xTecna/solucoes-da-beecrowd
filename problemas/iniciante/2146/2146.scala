import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    var entrada: String = null
    while ({ entrada = io.StdIn.readLine(); entrada != null }) {
      var senha = entrada.toInt
      println(senha - 1)
    }
  }
}
