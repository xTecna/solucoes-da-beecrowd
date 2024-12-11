import scala.util.control.Breaks._

object Main {
  def main(args: Array[String]): Unit = {
    val l = io.StdIn.readLine()
    println(l(0).toInt - 64)
  }
}
