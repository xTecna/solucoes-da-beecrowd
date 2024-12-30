object Main {
    def mdc(a: Int, b: Int): Int = {
        if (b == 0) {
            return a
        }
        return mdc(b, a % b)
    }

    def main(args: Array[String]): Unit = {
        var linha: String = null
        while ({ linha = io.StdIn.readLine(); linha != null }) {
            val numeros = linha.split(" ").map(_.toInt)
            val x = numeros(0)
            val y = numeros(1)

            println((2 * (x + y)) / mdc(x, y))
        }
    }
}
