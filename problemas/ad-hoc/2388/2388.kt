import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()

    var resposta = 0
    for (i in 1..n) {
        val v: Int = sc.next().toInt()
        val t: Int = sc.next().toInt()
        resposta += v * t
    }

    println(resposta)
}
