use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<&str> = input.split(" ").collect();

    let mut corretos: i32 = 0;
    for i in 0..5 {
        let numero: i32 = numeros[i].trim().parse().unwrap();
        if numero == t {
            corretos += 1
        }
    }
    println!("{}", corretos);
}
