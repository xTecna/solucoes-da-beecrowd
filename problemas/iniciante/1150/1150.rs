use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let x: i32 = input.trim().parse().unwrap();

    let mut z: i32 = 0;
    while z <= x {
        input = String::new();
        io::stdin().read_line(&mut input);
        z = input.trim().parse().unwrap();
    }

    let mut soma: i32 = 0;
    let mut resposta: i32 = 0;
    while soma <= z {
        soma += x + resposta;
        resposta += 1;
    }
    println!("{}", resposta);
}
