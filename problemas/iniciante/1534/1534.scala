object Main {
  def main(args: Array[String]): Unit = {
    var entrada: String = null
    while ({ entrada = io.StdIn.readLine(); entrada != null }) {
      var n = entrada.toInt
      for(i <- 0 to n - 1){
        for(j <- 0 to n - 1){
          if(i == n - 1 - j){
            printf("2")
          }else if(i == j){
            printf("1")
          }else{
            printf("3")
          }
        }
        printf("\n")
      }
    }
  }
}
