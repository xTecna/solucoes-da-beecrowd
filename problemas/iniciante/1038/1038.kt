import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    
    val codigo: Int = sc.next().toInt()
    val quantidade: Int = sc.next().toInt()
    
    val precos: Array<Double> = arrayOf(4.00, 4.50, 5.00, 2.00, 1.50);
    
    println(String.format("Total: R$ %.2f", quantidade * precos[codigo - 1]))
}