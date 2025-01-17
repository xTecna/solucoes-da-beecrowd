import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    while (true) {
        val a: Int = sc.next().toInt()
        val b: Int = sc.next().toInt()

        if (a == 0 && b == 0) {
            break
        }

        println(2 * a - b)
    }
}
