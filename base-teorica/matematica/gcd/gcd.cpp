int MDC(int a, int b)
{
    return (b == 0) ? a : MDC(b, a % b);
}