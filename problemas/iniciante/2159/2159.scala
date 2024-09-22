import scala.math.log

object Main {
  def main(args: Array[String]) {
    val n = io.StdIn.readLine().toInt
    printf("%.1f %.1f\n", n / log(n), 1.25506 * n / log(n))
  }
}
