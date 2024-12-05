object Main {
  def main(args: Array[String]): Unit = {
    val entrada = io.StdIn.readLine().split(" ")
    for (i <- 0 to 3) {
      if(entrada(i).toInt == 1){
        printf("%d\n", i + 1)
      }
    }
  }
}
