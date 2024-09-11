import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var x: Int = sc.next().toInt()
    x += 1 - (x % 2)

    for (i in 0..5) {
        println(x + (2 * i))
    }
}
