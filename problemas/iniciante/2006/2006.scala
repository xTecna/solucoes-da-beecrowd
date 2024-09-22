object Main {
  def main(args: Array[String]): Unit = {
    val t = io.StdIn.readLine().toInt
    val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
    var corretos = 0
    for(i <- 0 to 4) {
      if (numeros(i) == t) {
        corretos += 1
      }
    }
    printf("%d\n", corretos)
  }
}
