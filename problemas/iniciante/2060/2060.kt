import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()

  var dois = 0
  var tres = 0
  var quatro = 0
  var cinco = 0
  for (i in 1..n) {
    val x = sc.nextInt()

    if(x % 2 == 0) {
      dois += 1
    }
    if(x % 3 == 0) {
      tres += 1
    }
    if(x % 4 == 0) {
      quatro += 1
    }
    if(x % 5 == 0) {
      cinco += 1
    }
  }

  println(String.format("%d Multiplo(s) de 2", dois))
  println(String.format("%d Multiplo(s) de 3", tres))
  println(String.format("%d Multiplo(s) de 4", quatro))
  println(String.format("%d Multiplo(s) de 5", cinco))
}
