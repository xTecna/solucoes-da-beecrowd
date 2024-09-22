object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    for (i <- 1 to n) {
      val entrada = io.StdIn.readLine().split(" ")
      val h = entrada(0).toInt
      val m = entrada(1).toInt
      val o = entrada(2).toInt

      if(o == 1){
        printf("%02d:%02d - A porta abriu!\n", h, m)
      }else{
        printf("%02d:%02d - A porta fechou!\n", h, m)
      }
    }
  }
}
