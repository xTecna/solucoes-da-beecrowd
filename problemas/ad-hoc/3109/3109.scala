import scala.collection.mutable.ArrayBuffer

object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt

        var mesas = ArrayBuffer[Int]()
        for(i <- 0 to n + 1) {
            mesas += i
        }

        val q = io.StdIn.readLine().toInt
        for (i <- 1 to q) {
            val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
            if (entrada(0) == 1) {
                val temp = mesas(entrada(1))
                mesas(entrada(1)) = mesas(entrada(2))
                mesas(entrada(2)) = temp
            } else {
                var resposta = 0

                var objetivo = entrada(1)
                var pos = mesas(objetivo)
                while (pos != objetivo) {
                    pos = mesas(pos)
                    resposta += 1
                }

                println(resposta)
            }
        }
    }
}
