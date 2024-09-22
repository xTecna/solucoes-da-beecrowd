object Main {
  def main(args: Array[String]): Unit = {
    val linha = "---------------------------------------\n"
    printf(linha)
    for (i <- 1 to 5) {
      printf("|                                     |\n")
    }
    printf(linha)
  }
}
