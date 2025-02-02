object Main {
  def main(args: Array[String]) {
    val n = io.StdIn.readLine().toInt
    val m = io.StdIn.readLine().toInt

    var figurinhas = scala.collection.mutable.Set[Int]()
    for(i <- 0 to m - 1) {
      val x = io.StdIn.readLine().toInt
      figurinhas += x
    }

    println(n - figurinhas.size)
  }
}
