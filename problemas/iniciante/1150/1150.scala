object Main {
  def main(args: Array[String]): Unit = {
    val x = io.StdIn.readLine().toInt
    var z = x
    while(z <= x) {
      z = io.StdIn.readLine().toInt
    }
    var soma = x
    var resposta = 1
    while(soma <= z) {
      soma += x + resposta
      resposta += 1
    }
    printf("%d\n", resposta)
  }
}
