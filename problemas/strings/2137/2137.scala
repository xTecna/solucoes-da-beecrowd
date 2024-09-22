import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    var entrada: String = null
    while ({ entrada = io.StdIn.readLine(); entrada != null }) {
      val n = entrada.toInt

      var biblioteca = ArrayBuffer[String]()
      for(i <- 1 to n) {
        biblioteca += io.StdIn.readLine()
      }

      biblioteca = biblioteca.sorted
      
      for(i <- 0 to (n - 1)) {
        println(biblioteca(i))
      }
    }
  }
}
