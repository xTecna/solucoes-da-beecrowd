object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    printf("Feliz nat")
    for(i <- 1 to n) {
      printf("a")
    }
    printf("l!\n")
  }
}
