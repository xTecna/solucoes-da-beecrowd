use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<&str> = input.split(" ").collect();

    let mut dois: i32 = 0;
    let mut tres: i32 = 0;
    let mut quatro: i32 = 0;
    let mut cinco: i32 = 0;
    for i in 0..n {
        let numero: i32 = numeros[i as usize].trim().parse().unwrap();
        if numero % 2 == 0 {
            dois += 1
        }
        if numero % 3 == 0 {
            tres += 1
        }
        if numero % 4 == 0 {
            quatro += 1
        }
        if numero % 5 == 0 {
            cinco += 1
        }
    }

    println!("{} Multiplo(s) de 2", dois);
    println!("{} Multiplo(s) de 3", tres);
    println!("{} Multiplo(s) de 4", quatro);
    println!("{} Multiplo(s) de 5", cinco);
}
