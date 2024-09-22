object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    printf("Ho")
    for(i <- 2 to n) {
      printf(" Ho")
    }
    printf("!\n")
  }
}
