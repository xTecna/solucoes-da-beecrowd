object Main {
  def main(args: Array[String]): Unit = {
    val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val p = entrada(0)
    val r = entrada(1)

    if(p == 1){
      if(r == 1){
        printf("A\n")
      }else{
        printf("B\n")
      }
    }else{
      printf("C\n")
    }
  }
}
