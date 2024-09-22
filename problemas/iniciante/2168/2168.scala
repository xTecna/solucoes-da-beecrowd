object Main {
  def segura(m: Array[Array[Int]], i: Int, j: Int): Boolean = {
    m(i)(j) + m(i + 1)(j) + m(i)(j + 1) + m(i + 1)(j + 1) >= 2
  }

  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt

    var m = Array.ofDim[Int](n + 1, n + 1)
    for (i <- 0 until n + 1) {
      var entrada = io.StdIn.readLine().split(" ")
      for (j <- 0 until n + 1) {
        m(i)(j) = entrada(j).toInt
      }
    }

    for (i <- 0 until n) {
      for (j <- 0 until n) {
        if (segura(m, i, j)) {
          printf("S")
        } else {
          printf("U")
        }
      }
      printf("\n")
    }
  }
}
