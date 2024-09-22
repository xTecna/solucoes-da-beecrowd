import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val n = entrada(0)
    val k = entrada(1)
    
    var alunos = ArrayBuffer[String]()
    for(i <- 1 to n) {
      alunos += io.StdIn.readLine()
    }

    alunos = alunos.sorted

    printf("%s\n", alunos(k - 1))
  }
}
