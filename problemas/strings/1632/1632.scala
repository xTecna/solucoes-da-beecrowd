object Main {
    def variacoes(letra: Char): Int = {
        if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 's') {
            return 3
        }
        return 2
    }

    def main(args: Array[String]): Unit = {
        val n = io.StdIn.readLine().toInt

        for (i <- 1 to n) {
            var resposta = 1
            val senha = io.StdIn.readLine().toLowerCase()
            for (j <- 0 to senha.length - 1) {
                resposta *= variacoes(senha(j))
            }

            println(resposta)
        }
    }
}
