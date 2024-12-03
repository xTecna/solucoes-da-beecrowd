select
    empregados.cpf,
    empregados.enome,
    departamentos.dnome
from
    empregados
    join departamentos on empregados.dnumero = departamentos.dnumero
    LEFT JOIN trabalha on empregados.cpf = trabalha.cpf_emp
WHERE
    trabalha.pnumero is NULL
order by
    empregados.cpf asc;