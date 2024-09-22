object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    for(i <- 1 to n) {
      val partes = io.StdIn.readLine().split(" ")
      if (partes(0) == "Thor"){
        printf("Y\n")
      } else {
        printf("N\n")
      }
    }
  }
}
