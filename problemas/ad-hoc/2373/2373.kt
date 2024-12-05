import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()

    var resposta = 0
    for (i in 1..n) {
        val latas: Int = sc.next().toInt()
        val copos: Int = sc.next().toInt()

        if (latas > copos) {
            resposta += copos
        }
    }

    println(resposta)
}
