object Main {
    def main(args: Array[String]) {
        var n = io.StdIn.readLine().toInt

        for(i <- 0 to 9){
            printf("N[%d] = %d\n", i, n)
            n *= 2
        }
    }
}
