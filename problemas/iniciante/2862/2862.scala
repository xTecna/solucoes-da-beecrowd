object Main {
  def main(args: Array[String]): Unit = {
    val c = io.StdIn.readLine().toInt
    for (i <- 1 to c) {
      val n = io.StdIn.readLine().toInt
      if(n <= 8000){
        printf("Inseto!\n")
      }else{
        printf("Mais de 8000!\n")
      }
    }
  }
}
