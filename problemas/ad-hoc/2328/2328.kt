import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()

    var soma = 0
    for (i in 1..n) {
        val x: Int = sc.next().toInt()
        soma += x
    }

    println(soma - n)
}
