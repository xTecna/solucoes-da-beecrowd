object Main {
    def main(args: Array[String]) {
        val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
        val cv = numeros(0)
        val ce = numeros(1)
        val cs = numeros(2)
        val fv = numeros(3)
        val fe = numeros(4)
        val fs = numeros(5)

        val cp = 10000 * (3 * cv + ce) + cs;
        val fp = 10000 * (3 * fv + fe) + fs;

        if (cp > fp)
        {
            println("C")
        }
        else if (fp > cp)
        {
            println("F")
        }
        else
        {
            println("=")
        }
    }
}
