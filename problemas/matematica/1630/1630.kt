import java.util.*

fun mdc(a: Int, b: Int): Int {
    if (b == 0) {
        return a
    }
    return mdc(b, a % b)
}

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    
    while (sc.hasNext()) {
        val x = sc.nextInt()
        val y = sc.nextInt()

        println((2 * (x + y)) / mdc(x, y))
    }
}
