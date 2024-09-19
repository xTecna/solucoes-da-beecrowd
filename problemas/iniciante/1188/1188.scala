import scala.util.control.Breaks._

object Main {
  def main(args: Array[String]): Unit = {
    val t = io.StdIn.readLine()

    var m = Array.ofDim[Double](12, 12)
    for (i <- 0 until 12) {
      for (j <- 0 until 12) {
        m(i)(j) = io.StdIn.readLine().toDouble
      }
    }

    var media = 0.0
    var quantidade = 0
    for (i <- 7 until 12) {
      for (j <- (12-i) until i) {
        media += m(i)(j)
        quantidade += 1
      }
    }

    if (t == "M") {
      media /= quantidade
    }

    printf("%.1f\n", media)
  }
}
