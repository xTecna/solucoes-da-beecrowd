use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut codigo: i32 = input.trim().parse().unwrap();

    let mut alcool = 0;
    let mut gasolina = 0;
    let mut diesel = 0;
    while codigo != 4 {
        if codigo == 1 {
            alcool += 1;
        } else if codigo == 2 {
            gasolina += 1;
        } else if codigo == 3 {
            diesel += 1;
        }

        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        codigo = input2.trim().parse().unwrap();
    }

    println!("MUITO OBRIGADO");
    println!("Alcool: {}", alcool);
    println!("Gasolina: {}", gasolina);
    println!("Diesel: {}", diesel);
}
