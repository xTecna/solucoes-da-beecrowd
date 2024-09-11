object Main {
    def main(args: Array[String]) {
        var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        var x = entrada(0)
        var y = entrada(1)

        while (x != 0 && y != 0){
            if (x > 0){
                if (y > 0){
                    printf("primeiro\n")
                }else{
                    printf("quarto\n")
                }
            }else{
                if (y > 0){
                    printf("segundo\n")
                }else{
                    printf("terceiro\n")
                }
            }

            entrada = io.StdIn.readLine().split(" ").map(_.toInt)
            x = entrada(0)
            y = entrada(1)
        }
    }
}
