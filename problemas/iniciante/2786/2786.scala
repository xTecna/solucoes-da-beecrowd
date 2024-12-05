object Main {
  def main(args: Array[String]) {
    val l = io.StdIn.readLine().toInt
    val c = io.StdIn.readLine().toInt

    println(l * c + (l - 1) * (c - 1))
    println(2 * (l + c - 2))
  }
}
