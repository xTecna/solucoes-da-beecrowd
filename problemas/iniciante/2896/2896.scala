object Main {
  def main(args: Array[String]) {
    val n = io.StdIn.readLine().toInt
    
    for(i <- 0 to n - 1) {
      val entrada = io.StdIn.readLine().split(" ")
      val n = entrada(0).toInt
      val k = entrada(1).toInt
      
      println((n / k) + (n % k))
    }
  }
}
