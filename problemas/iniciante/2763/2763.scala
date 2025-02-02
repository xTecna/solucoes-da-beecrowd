object Main {
  def main(args: Array[String]): Unit = {
    val partes = io.StdIn.readLine().split("\\.")
    val partes2 = partes(2).split("-")

    printf("%s\n", partes(0))
    printf("%s\n", partes(1))
    printf("%s\n", partes2(0))
    printf("%s\n", partes2(1))
  }
}
