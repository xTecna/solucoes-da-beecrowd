object Main {
  def main(args: Array[String]) {
    val n = io.StdIn.readLine().toInt
    
    var vitorias = 0
    for(i <- 0 to n - 1) {
      val x = io.StdIn.readLine().toInt
      if (x != 1) {
        vitorias += 1
      }
    }

    println(vitorias)
  }
}
