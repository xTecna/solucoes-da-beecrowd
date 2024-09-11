object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt

    for(i <- 1 to n){
      var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
      var x = entrada(0)
      var y = entrada(1)
    
      if(y == 0){
        printf("divisao impossivel\n")
      }else{
        printf("%.1f\n", x.toFloat/y)
      }
    }
  }
}
