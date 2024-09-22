use std::io;

fn main() {
    let mut pessoas = 0;
    let mut jipes = 0;
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let palavra: &str = parts[0].trim();

        if palavra == "ABEND" {
            break;
        }

        let numero: i32 = parts[1].trim().parse().unwrap();
        if palavra == "SALIDA" {
            pessoas += numero;
            jipes += 1;
        } else {
            pessoas -= numero;
            jipes -= 1;
        }
    }

    println!("{}", pessoas);
    println!("{}", jipes);
}
