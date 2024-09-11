object Main {
  def main(args: Array[String]): Unit = {
    var k = io.StdIn.readLine().toInt
    while (k != 0){
      val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
      val n = entrada(0)
      val m = entrada(1)

      for (i <- 1 to k){
        val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        var x = entrada(0)
        var y = entrada(1)

        x -= n
        y -= m

        if (x > 0 && y > 0) {
            printf("NE\n")
        } else if (x > 0 && y < 0) {
            printf("SE\n")
        } else if (x < 0 && y > 0) {
            printf("NO\n")
        } else if (x < 0 && y < 0) {
            printf("SO\n")
        } else {
            printf("divisa\n")
        }
      }

      k = io.StdIn.readLine().toInt
    }
  }
}
