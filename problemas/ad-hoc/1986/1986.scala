object Main {
    def valor(letra: Char): Int = {
        if (letra.isDigit) {
            return letra.toInt - '0'.toInt
        }
        return letra.toInt - 'A'.toInt + 10
    }

    def convertePraDecimal(numero: String): Int = {
        var resposta = 0
        for (i <- 0 to numero.length - 1) {
            resposta *= 16
            resposta += valor(numero(i))
        }
        return resposta
    }

    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt
        val letras = io.StdIn.readLine().split(" ").map(_.toUpperCase())

        for (i <- 0 to (n - 1)) {
            print(convertePraDecimal(letras(i)).toChar)
        }
        println("")
    }
}
