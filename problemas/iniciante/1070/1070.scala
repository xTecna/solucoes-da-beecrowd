object Main {   
  def main(args: Array[String]): Unit = {
    var x = io.StdIn.readLine().toInt
    x += 1 - (x % 2)

    for(i <- 0 to 5){
        printf("%d\n", x + (2 * i))
    }
  }
}
