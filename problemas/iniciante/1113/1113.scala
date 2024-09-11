object Main {
    def main(args: Array[String]) {
        var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        var x = entrada(0)
        var y = entrada(1)

        while (x != y) {
            if (x < y) {
                printf("Crescente\n")
            }else{
                printf("Decrescente\n")
            }

            entrada = io.StdIn.readLine().split(" ").map(_.toInt)
            x = entrada(0)
            y = entrada(1)
        }
    }
}
