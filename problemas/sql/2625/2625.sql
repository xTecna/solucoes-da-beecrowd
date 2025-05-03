select
    format(
        '%s.%s.%s-%s',
        substring(cpf, 1, 3),
        substring(cpf, 4, 3),
        substring(cpf, 7, 3),
        substring(cpf, 10, 2)
    ) as cpf
from
    natural_person;
