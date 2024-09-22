object Main {
  def main(args: Array[String]): Unit = {
    val nomes = Array("Rolien", "Naej", "Elehcim", "Odranoel")

    var n = io.StdIn.readLine().toInt
    for (i <- 1 to n) {
      var k = io.StdIn.readLine().toInt
      for (j <- 1 to k) {
        var feedback = io.StdIn.readLine().toInt
        printf("%s\n", nomes(feedback - 1))
      }
    }
  }
}
