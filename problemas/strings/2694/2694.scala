object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt
        
        for (i <- 1 to n) {
            val entrada = io.StdIn.readLine()

            var soma = 0
            var numero = 0
            for (k <- 0 to entrada.length - 1) {
                if(entrada(k).isDigit) {
                    numero *= 10
                    numero += entrada(k).toInt - '0'.toInt
                } else {
                    soma += numero
                    numero = 0
                }
            }
            soma += numero

            println(soma)
        }
    }
}
