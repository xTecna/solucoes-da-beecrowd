object Main {
    def main(args: Array[String]) {
        var senha = io.StdIn.readLine()
        while (senha != "2002") {
            printf("Senha Invalida\n")
            senha = io.StdIn.readLine()
        }
        printf("Acesso Permitido\n")
    }
}
