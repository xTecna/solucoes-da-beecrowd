import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val x = io.StdIn.readLine().toInt
    println(x + 2 - (x % 2))
  }
}
