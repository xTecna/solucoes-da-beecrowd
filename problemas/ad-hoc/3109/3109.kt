import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()
    val mesas = mutableListOf<Int>()
    for (i in 0..n) {
        mesas.add(i)
    }

    val q: Int = sc.next().toInt()
    for (i in 1..q) {
        val e: Int = sc.next().toInt()
        val a: Int = sc.next().toInt()

        if (e == 1) {
            val b: Int = sc.next().toInt()

            val temp = mesas[a]
            mesas[a] = mesas[b]
            mesas[b] = temp
        } else {
            var resposta = 0
            var mesa = mesas[a]
            while(mesa != a) {
                resposta += 1
                mesa = mesas[mesa]
            }

            println(resposta)
        }
    }
}
