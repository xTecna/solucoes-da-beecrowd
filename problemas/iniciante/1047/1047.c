#include <stdio.h>

int main()
{
    int h_inicio, m_inicio, h_final, m_final;

    scanf("%d %d %d %d\n", &h_inicio, &m_inicio, &h_final, &m_final);

    int inicio = h_inicio * 60 + m_inicio;
    int final = h_final * 60 + m_final;

    if (final <= inicio)
    {
        final += 24 * 60;
    }

    printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", (final - inicio) / 60, (final - inicio) % 60);

    return 0;
}