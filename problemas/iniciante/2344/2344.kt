import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  if(n > 85){
    println("A")
  }else if(n > 60){
    println("B")
  }else if(n > 35){
    println("C")
  }else if(n > 0){
    println("D")
  }else{
    println("E")
  }
}
