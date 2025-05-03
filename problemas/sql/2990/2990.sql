select
    empregados.cpf,
    empregados.enome,
    departamentos.dnome
from
    empregados
inner join departamentos on empregados.dnumero = departamentos.dnumero
left join trabalha on empregados.cpf = trabalha.cpf_emp
where trabalha.pnumero is NULL
order by empregados.cpf asc;
