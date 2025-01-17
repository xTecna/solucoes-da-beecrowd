object Main {
    def main(args: Array[String]) {
        val c = io.StdIn.readLine().toInt

        for (k <- 1 to c) {
            val palavra1 = io.StdIn.readLine()
            val palavra2 = io.StdIn.readLine()
            val secreta = io.StdIn.readLine()

            val pos1 = secreta.indexOf('_')
            val pos2 = secreta.indexOf('_', pos1 + 1)

            if(palavra1(pos1) == palavra2(pos2) || palavra1(pos2) == palavra2(pos1)) {
                println('Y')
            } else {
                println('N')
            }
        }
    }
}
