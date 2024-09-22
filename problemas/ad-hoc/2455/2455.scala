object Main {
  def main(args: Array[String]): Unit = {
    val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
    val p1 = entrada(0)
    val c1 = entrada(1)
    val p2 = entrada(2)
    val c2 = entrada(3)

    val diferenca = p2 * c2 - p1 * c1

    if(diferenca < 0){
      print("-1\n")
    }else if(diferenca > 0){
      printf("1\n")
    }else{
      printf("0\n")
    }
  }
}
