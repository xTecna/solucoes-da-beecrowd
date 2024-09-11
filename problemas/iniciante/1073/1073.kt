import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var x: Int = sc.next().toInt()
    x -= (x % 2)

    for (i in 2..x step 2) {
        println(String.format("%d^2 = %d", i, i * i))
    }
}
