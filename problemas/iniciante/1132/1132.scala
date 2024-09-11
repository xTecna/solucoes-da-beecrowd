object Main {
    def main(args: Array[String]) {
        var x = io.StdIn.readLine().toInt
        var y = io.StdIn.readLine().toInt

        if(x > y){
            val temp = x
            x = y
            y = temp
        }

        var soma = 0
        for (i <- x to y) {
            if (i % 13 != 0) {
                soma += i
            }
        }
        
        printf("%d\n", soma)
    }
}
