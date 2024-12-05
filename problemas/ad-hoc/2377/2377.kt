import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val L: Int = sc.next().toInt()
    val D: Int = sc.next().toInt()
    val K: Int = sc.next().toInt()
    val P: Int = sc.next().toInt()

    println(K * L + P * (L / D))
}
