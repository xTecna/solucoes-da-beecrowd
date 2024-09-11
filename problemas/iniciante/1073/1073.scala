object Main {
  def main(args: Array[String]): Unit = {
    var n = io.StdIn.readLine().toInt
    n -= (n % 2)
      
    for(i <- 2 to n by 2){
        printf("%d^2 = %d\n", i, i * i)
    }
  }
}
