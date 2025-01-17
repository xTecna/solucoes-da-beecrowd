import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val cv: Int = sc.next().toInt()
    val ce: Int = sc.next().toInt()
    val cs: Int = sc.next().toInt()
    val fv: Int = sc.next().toInt()
    val fe: Int = sc.next().toInt()
    val fs: Int = sc.next().toInt()

    val cp = 10000 * (3 * cv + ce) + cs
    val fp = 10000 * (3 * fv + fe) + fs

    if (cp > fp) {
        println("C")
    } else if (fp > cp) {
        println("F")
    } else {
        println("=")
    }
}
