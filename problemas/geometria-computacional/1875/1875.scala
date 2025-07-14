import scala.collection.mutable.Map

object Main {
    def main(args: Array[String]) {
        val regras = Map(("R", Map(("G", 2), ("B", 1))), ("G", Map(("R", 1), ("B", 2))), ("B", Map(("R", 2), ("G", 1))))
        val c = io.StdIn.readLine().trim().toInt
        for (k <- 1 to c) {
            val p = io.StdIn.readLine().trim().toInt

            val pontos = Map(("R", 0), ("G", 0), ("B", 0))
            for(i <- 1 to p) {
                val times = io.StdIn.readLine().trim().split(" ")
                pontos(times(0)) += regras(times(0))(times(1))
            }

            if (pontos("R") == pontos("G") && pontos("G") == pontos("B")) {
                println("trempate")
            } else if (pontos("R") > pontos("G") && pontos("R") > pontos("B")) {
                println("red")
            } else if (pontos("G") > pontos("R") && pontos("G") > pontos("B")) {
                println("green")
            } else if (pontos("B") > pontos("R") && pontos("B") > pontos("G")) {
                println("blue")
            } else {
                println("empate")
            }
        }
    }
}
