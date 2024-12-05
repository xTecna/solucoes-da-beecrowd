object Main {
  def main(args: Array[String]): Unit = {
    val d = io.StdIn.readLine().toInt

    if(d <= 800) {
      printf("1\n")
    }else if(d <= 1400) {
      printf("2\n")
    }else{
      printf("3\n")
    }
  }
}
