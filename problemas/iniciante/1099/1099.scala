object Main {
  def numeroImpares(x: Int, y: Int): Int = {
    return (y - x)/2 + 1
  }

  def somaPA(a1: Int, an: Int, n: Int): Int = {
    return ((a1 + an) * n)/2
  }

  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt

    for(i <- 1 to n){
      var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
      var x = entrada(0)
      var y = entrada(1)
    
      if(x > y){
        val temp = x
        x = y
        y = temp
      }
    
      x += (x.abs % 2) + 1
      y -= (y.abs % 2) + 1

      if(x > y){
        printf("0\n")
      }else{
        printf("%d\n", somaPA(x, y, numeroImpares(x, y)))
      }
    }
  }
}
