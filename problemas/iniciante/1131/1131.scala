object Main {
  def main(args: Array[String]): Unit = {
    var entrada: String = null

    var inter = 0
    var gremio = 0
    var empate = 0
    while ({ entrada = io.StdIn.readLine(); entrada != null }) {
      val numeros = entrada.split(" ").map(_.toInt)
      val i = numeros(0)
      val g = numeros(1)

      if (i > g) {
        inter += 1
      } else if (i == g) {
        empate += 1
      } else {
        gremio += 1;
      }
      
      var codigo = 0
      while (codigo != 1 && codigo != 2) {
        printf("Novo grenal (1-sim 2-nao)\n")
        codigo = io.StdIn.readLine().toInt
      }
    }

    printf("%d grenais\n", inter + empate + gremio)
    printf("Inter:%d\n", inter)
    printf("Gremio:%d\n", gremio)
    printf("Empates:%d\n", empate)
    if (inter > gremio && inter > empate) {
      printf("Inter venceu mais\n")
    } else if (gremio > empate && gremio > empate) {
      printf("Gremio venceu mais\n")
    } else {
      printf("Nao houve vencedor\n")
    }
  }
}
