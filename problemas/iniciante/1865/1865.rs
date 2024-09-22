use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for i in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<&str> = input.split(" ").collect();

        if numeros[0] == "Thor" {
            println!("Y");
        } else {
            println!("N");
        }
    }
}
