import scala.math.max

object Main {
  def main(args: Array[String]) {
    val m = io.StdIn.readLine().toInt
    val a = io.StdIn.readLine().toInt
    val b = io.StdIn.readLine().toInt

    val c = m - a - b
    
    println(max(a, max(b, c)))
  }
}
