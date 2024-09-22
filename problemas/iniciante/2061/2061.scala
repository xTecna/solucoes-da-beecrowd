object Main {
  def main(args: Array[String]): Unit = {
    var entrada = io.StdIn.readLine().split(" ")
    var n = entrada(0).toInt
    val m = entrada(1).toInt

    for(i <- 1 to m){
      val acao = io.StdIn.readLine()

      if(acao == "fechou"){
        n += 1
      }else{
        n -= 1
      }
    }

    println(n)
  }
}
