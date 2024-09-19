object Main {   
  def main(args: Array[String]): Unit = {
    for(i <- 0 to 9){
        val x = io.StdIn.readLine().toInt

        if(x > 0){
            printf("X[%d] = %d\n", i, x)
        }else{
            printf("X[%d] = 1\n", i)
        }
    }
  }
}
