import scala.math.{floor, log10}

object Main {
  def main(args: Array[String]): Unit = {
    var n = io.StdIn.readLine().toInt
    while (n != 0) {
      val limite = floor(log10(1 << (2 * n - 2))).toInt + 1
      for (i <- 0 until n) {
        printf(s"%${limite}d", 1 << i)
        for (j <- 1 until n) {
          printf(s"%${limite + 1}d", 1 << (i + j))
        }
        printf("\n")
      }
      printf("\n")

      n = io.StdIn.readLine().toInt
    }
  }
}
