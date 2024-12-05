import java.util.*

fun somaPA(a1: Int, an: Int, n: Int): Int {
    return (n * (a1 + an)) / 2
}

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val t: Int = sc.next().toInt()

    for (i in 1..t) {
        val n: Int = sc.next().toInt()

        println(somaPA(1, n, n) + 1)
    }
}
