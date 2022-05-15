#include <stdio.h>

int converte(int dia, int hora, int minutos, int segundos)
{
    return (24 * 60 * 60 * dia) + (60 * 60 * hora) + (60 * minutos) + segundos;
}

int main()
{
    int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

    scanf("Dia %d\n", &d_inicial);
    scanf("%d : %d : %d\n", &h_inicial, &m_inicial, &s_inicial);
    scanf("Dia %d\n", &d_final);
    scanf("%d : %d : %d\n", &h_final, &m_final, &s_final);

    int inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
    int final = converte(d_final, h_final, m_final, s_final);
    int duracao = final - inicial;

    printf("%d dia(s)\n", duracao / (24 * 60 * 60));
    duracao %= 24 * 60 * 60;
    printf("%d hora(s)\n", duracao / (60 * 60));
    duracao %= 60 * 60;
    printf("%d minuto(s)\n", duracao / 60);
    duracao %= 60;
    printf("%d segundo(s)\n", duracao);

    return 0;
}