object Main {
  def main(args: Array[String]): Unit = {
    val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val a = entrada(0)
    val b = entrada(1)
    val c = entrada(2)

    if(a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a) {
      printf("S\n")
    } else {
      printf("N\n")
    }
  }
}
