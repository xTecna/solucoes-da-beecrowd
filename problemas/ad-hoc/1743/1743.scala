object Main {
  def main(args: Array[String]): Unit = {
    val x = io.StdIn.readLine().split(" ").map(_.toInt)
    val y = io.StdIn.readLine().split(" ").map(_.toInt)

    var compativel = true
    for (i <- 0 to 4){
      if(x(i) == y(i)){
        compativel = false
      }
    }

    if(compativel) {
      printf("Y\n")
    }else{
      printf("N\n")
    }
  }
}
