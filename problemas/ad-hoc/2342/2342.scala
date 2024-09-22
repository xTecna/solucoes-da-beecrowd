object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt

    val entrada = io.StdIn.readLine().split(" ")
    val p = entrada(0).toInt
    val c = entrada(1)
    val q = entrada(2).toInt

    if(c == "+") {
      if(p + q <= n) {
        printf("OK\n")
      } else {
        printf("OVERFLOW\n")
      }
    } else {
      if(p * q <= n) {
        printf("OK\n")
      } else {
        printf("OVERFLOW\n")
      }
    }
  }
}
