object Main {
  def main(args: Array[String]): Unit = {
    val n = io.StdIn.readLine().toInt
    val entrada = io.StdIn.readLine().split(" ")
    val a = entrada(0).toInt
    val b = entrada(1).toInt

    if(a + b <= n){
      printf("Farei hoje!\n")
    }else{
      printf("Deixa para amanha!\n")
    }
  }
}
