object Main {
  def main(args: Array[String]): Unit = {
    val s = io.StdIn.readLine()

    var soma = 0
    for (i <- 0 to (s.length() - 1)) {
      soma += s(i).toInt
    }
    printf("%s%d\n", s, soma % 2)
  }
}
