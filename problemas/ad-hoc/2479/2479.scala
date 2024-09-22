import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt

    var levadas = 0
    var comportadas = 0
    var criancas = ArrayBuffer[String]()
    for(i <- 1 to n) {
      val palavras = io.StdIn.readLine().split(" ")

      if(palavras(0) == "+"){
        comportadas += 1
      } else {
        levadas += 1
      }
      
      criancas += palavras(1)
    }

    criancas = criancas.sorted

    for(i <- 0 to (n - 1)) {
      println(criancas(i))
    }
    printf("Se comportaram: %d | Nao se comportaram: %d\n", comportadas, levadas)
  }
}
