import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val c: Int = sc.next().toInt()

    var resposta = 0
    for(i in 1..c) {
        val numero: Int = sc.next().toInt()
        resposta += numero
    }

    println(resposta)
}
