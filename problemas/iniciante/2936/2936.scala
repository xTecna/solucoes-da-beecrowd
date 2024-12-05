object Main {
  def main(args: Array[String]): Unit = {
    val curupira = io.StdIn.readLine().toInt
    val boitata = io.StdIn.readLine().toInt
    val boto = io.StdIn.readLine().toInt
    val mapinguari = io.StdIn.readLine().toInt
    val iara = io.StdIn.readLine().toInt

    printf("%d\n", 225 + 300 * curupira + 1500 * boitata + 600 * boto + 1000 * mapinguari + 150 * iara)
  }
}
