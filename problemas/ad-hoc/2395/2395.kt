import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val A: Int = sc.next().toInt()
    val B: Int = sc.next().toInt()
    val C: Int = sc.next().toInt()
    
    val X: Int = sc.next().toInt()
    val Y: Int = sc.next().toInt()
    val Z: Int = sc.next().toInt()

    println((X / A) * (Y / B) * (Z / C))
}
