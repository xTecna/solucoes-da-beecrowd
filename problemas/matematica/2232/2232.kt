import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val t = sc.nextInt()
    for (i in 1..t) {
        val n = sc.nextInt()
        println((1 shl n) - 1)
    }
}
