object Main {
    def main(args: Array[String]) {
        val precos = Array(4.00, 4.50, 5.00, 2.00, 1.50)
        val entrada = io.StdIn.readLine().split(" ")
        var codigo = entrada(0).toInt
        var quantidade = entrada(1).toInt

        printf("Total: R$ %.2f\n", quantidade * precos(codigo - 1))
    }
}
