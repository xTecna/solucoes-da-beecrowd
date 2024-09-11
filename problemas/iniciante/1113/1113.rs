use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let partes: Vec<&str> = input.split(" ").collect();
    let mut a: i32 = partes[0].trim().parse().unwrap();
    let mut b: i32 = partes[1].trim().parse().unwrap();

    while a != b {
        if a < b {
            println!("Crescente");
        } else {
            println!("Decrescente");
        }

        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        let partes2: Vec<&str> = input2.split(" ").collect();
        a = partes2[0].trim().parse().unwrap();
        b = partes2[1].trim().parse().unwrap();
    }
}
