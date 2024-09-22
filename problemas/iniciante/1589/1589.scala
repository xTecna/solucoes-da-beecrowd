object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    for(i <- 1 to n) {
      val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
      printf("%d\n", numeros(0) + numeros(1))
    }
  }
}
