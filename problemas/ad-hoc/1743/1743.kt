import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var x = arrayOf(0, 0, 0, 0, 0)
  for (i in 0..4) {
    x[i] = sc.nextInt()
  }

  var y = arrayOf(0, 0, 0, 0, 0)
  for (i in 0..4) {
    y[i] = sc.nextInt()
  }

  var compativel = true
  for (i in 0..4) {
    if(x[i] == y[i]){
      compativel = false
      break
    }
  }

  if(compativel){
    println('Y')
  }else{
    println('N')
  }
}
