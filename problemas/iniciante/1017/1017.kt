import java.util.*

fun max(a: Int, b: Int) : Int {
    return (a + b + Math.abs(a - b))/2
}

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    
    val tempo: Int = sc.next().toInt()
    val velocidade: Int = sc.next().toInt()
    
    val combustivel: Double = (tempo * velocidade)/12.0

    println(String.format("%.3f", combustivel))
}
