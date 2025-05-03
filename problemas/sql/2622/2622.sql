select customers.name
from customers
inner join legal_person on customers.id = legal_person.id_customers;
