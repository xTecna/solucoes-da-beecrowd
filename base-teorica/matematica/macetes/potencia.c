unsigned long long int potencia(int base, int expoente)
{
    if (expoente == 1)
        return base;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    unsigned long long int p = potencia(base, expoente / 2);
    return p * p;
}