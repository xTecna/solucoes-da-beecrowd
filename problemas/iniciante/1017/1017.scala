object Main {
    def main(args: Array[String]) {
        val tempo = io.StdIn.readLine().toInt
        val velocidade = io.StdIn.readLine().toInt

        printf("%.3f\n", (tempo * velocidade)/12.0)
    }
}
