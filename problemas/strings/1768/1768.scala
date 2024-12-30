object Main {
    def desenhaTriangulo(tamanho: Int, deslocamento: Int): String = {
        val altura = (tamanho / 2) + 1
        val sb = new StringBuilder()

        for (k <- 1 to altura) {
            sb.append(" " * (deslocamento + altura - k))
            sb.append("*" * (2 * k - 1))
            sb.append("\n")
        }

        return sb.toString()
    }

    def main(args: Array[String]): Unit = {
        var linha: String = null
        while ({ linha = io.StdIn.readLine(); linha != null }) {
            val n = linha.toInt

            printf("%s", desenhaTriangulo(n, 0))
            println(desenhaTriangulo(2, n / 2 - 1))
        }
    }
}
