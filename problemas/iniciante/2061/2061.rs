use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.trim().split(" ").collect();
    let mut n: i32 = parts[0].trim().parse().unwrap();
    let m: i32 = parts[1].trim().parse().unwrap();

    for _ in 0..m {
        input = String::new();
        io::stdin().read_line(&mut input);
        let acao = input.trim();

        if acao == "fechou" {
            n += 1;
        } else {
            n -= 1;
        }
    }

    println!("{}", n);
}
