use std::io;

fn quantidadeImpares(a: i32, b: i32) -> i32 {
    return (b - a) / 2 + 1;
}

fn somaPA(a1: i32, an: i32, n: i32) -> i32 {
    return ((a1 + an) * n) / 2;
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let mut x: i32 = parts[0].trim().parse().unwrap();
        let mut y: i32 = parts[1].trim().parse().unwrap();

        if x > y {
            let temp: i32 = x;
            x = y;
            y = temp;
        }

        x += x.abs() % 2 + 1;
        y -= y.abs() % 2 + 1;

        if x > y {
            println!("{}", 0);
        } else {
            println!("{}", somaPA(x, y, quantidadeImpares(x, y)));
        }
    }
}
