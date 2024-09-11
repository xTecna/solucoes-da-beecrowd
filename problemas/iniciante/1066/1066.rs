use std::io;

fn main() {
    let mut pares: i32 = 0;
    let mut impares: i32 = 0;
    let mut positivos: i32 = 0;
    let mut negativos: i32 = 0;

    for i in 0..5 {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numero: i32 = input.trim().parse().unwrap();

        if numero % 2 == 0 {
            pares += 1;
        } else {
            impares += 1;
        }

        if numero > 0 {
            positivos += 1;
        } else if numero < 0 {
            negativos += 1;
        }
    }

    println!("{} valor(es) par(es)", pares);
    println!("{} valor(es) impar(es)", impares);
    println!("{} valor(es) positivo(s)", positivos);
    println!("{} valor(es) negativo(s)", negativos);
}
