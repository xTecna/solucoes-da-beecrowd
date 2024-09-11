object Main {
  def main(args: Array[String]): Unit = {
    var n = io.StdIn.readLine().toInt
    while (n != 0){
      for (i <- 1 to n){
        val cores = io.StdIn.readLine().split(" ").map(_.toInt)
  
        var opcao = -1
        var corretos = 0
        for (k <- 0 to 4){
          if (cores(k) <= 127){
            opcao = k
            corretos += 1
          }
        }
  
        if(corretos == 1){
          printf("%c\n", ('A'.toInt + opcao).toChar)
        }else{
          printf("*\n")
        }
      }
      
      n = io.StdIn.readLine().toInt
    }
  }
}
