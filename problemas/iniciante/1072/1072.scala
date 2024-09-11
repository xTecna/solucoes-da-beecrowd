object Main {   
  def main(args: Array[String]): Unit = {
    var dentro = 0
    var fora = 0
    
    val n = io.StdIn.readLine().toInt
    for(i <- 1 to n){
        val x = io.StdIn.readLine().toInt

        if(x >= 10 && x <= 20){
            dentro += 1
        }else{
            fora += 1
        }
    }

    printf("%d in\n", dentro)
    printf("%d out\n", fora)
  }
}
