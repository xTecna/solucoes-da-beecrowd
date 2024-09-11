object Main {
  def main(args: Array[String]): Unit = {
    var soma = 0
    var quantidade = 0
    var t = io.StdIn.readLine().toInt
    while(t >= 0) {
      soma += t
      quantidade += 1
      t = io.StdIn.readLine().toInt
    }

    printf("%.2f\n", soma.toFloat / quantidade)
  }
}
