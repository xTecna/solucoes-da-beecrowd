# 2754 - Saída 8

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2754)

## Solução

Nada te impede de só copiar a saída e mandar imprimir, mas aqui eu quis fazer bonitinho, pegando os formatos para imprimir do jeito que o problema quer.

### C99

```c
#include <stdio.h>

int main()
{
    double v1 = 234.345, v2 = 45.698;

    printf("%.6f - %.6f\n", v1, v2);
    printf("%.0f - %.0f\n", v1, v2);
    printf("%.1f - %.1f\n", v1, v2);
    printf("%.2f - %.2f\n", v1, v2);
    printf("%.3f - %.3f\n", v1, v2);
    printf("%e - %e\n", v1, v2);
    printf("%E - %E\n", v1, v2);
    printf("%g - %g\n", v1, v2);
    printf("%g - %g\n", v1, v2);

    return 0;
}
```

### Python 3.9

```py
v1, v2 = 234.345, 45.698

print(f'{v1:.6f} - {v2:.6f}')
print(f'{v1:.0f} - {v2:.0f}')
print(f'{v1:.1f} - {v2:.1f}')
print(f'{v1:.2f} - {v2:.2f}')
print(f'{v1:.3f} - {v2:.3f}')
print(f'{v1:e} - {v2:e}')
print(f'{v1:E} - {v2:E}')
print(f'{v1} - {v2}')
print(f'{v1} - {v2}')
```