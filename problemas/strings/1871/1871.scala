object Main {
  def main(args: Array[String]): Unit = {
    var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    var m = entrada(0)
    var n = entrada(1)
    while (m != 0 && n != 0) {
      var soma = (m + n).toString().replace("0", "")
      println(soma)
      
      entrada = io.StdIn.readLine().split(" ").map(_.toInt)
      m = entrada(0)
      n = entrada(1)
    }
  }
}
