import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while(true){
    val n: Int = sc.nextInt()

    if (n == 0) {
      break
    }

    var jogador1 = 0
    var jogador2 = 0
    
    for (i in 1..n) {
      val a: Int = sc.nextInt()
      val b: Int = sc.nextInt()
  
      if(a > b){
        jogador1 += 1
      } else if (a < b) {
        jogador2 += 1
      }
    }

    println(String.format("%d %d", jogador1, jogador2))
  }
}
