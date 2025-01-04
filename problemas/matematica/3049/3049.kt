import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val b: Int = sc.next().toInt()
    val t: Int = sc.next().toInt()

    if (b + t > 160) {
        println(1)
    } else if (b + t < 160) {
        println(2)
    } else {
        println(0)
    }
}
