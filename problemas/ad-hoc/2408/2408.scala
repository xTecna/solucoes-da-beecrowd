object Main {
    def main(args: Array[String]) {
        var pontos = io.StdIn.readLine().split(" ").map(_.toInt)
        pontos = pontos.sorted

        println(pontos(1))
    }
}
