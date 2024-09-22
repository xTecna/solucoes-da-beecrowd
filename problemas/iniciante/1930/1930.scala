object Main {
  def main(args: Array[String]): Unit = {
    val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
    var soma = 0
    for(i <- 0 to 3) {
      soma += numeros(i)
    }
    printf("%d\n", soma - 3)
  }
}
