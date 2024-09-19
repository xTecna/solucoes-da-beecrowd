object Main {
  def main(args: Array[String]): Unit = {
    val t = io.StdIn.readLine().toInt
    for(i <- 0 to 999) {
      printf("N[%d] = %d\n", i, i % t)
    }
  }
}
