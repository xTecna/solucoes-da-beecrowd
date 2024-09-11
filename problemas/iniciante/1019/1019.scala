object Main {
    def main(args: Array[String]) {
        var segundos = io.StdIn.readLine().toInt

        val horas = segundos/3600
        segundos %= 3600
        val minutos = segundos/60
        segundos %= 60

        printf("%d:%d:%d\n", horas, minutos, segundos)
    }
}
