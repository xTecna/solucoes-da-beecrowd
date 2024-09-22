use std::io;

fn r(a: i32, b: i32) -> i32 {
    (9 * a * a) + (b * b)
}

fn b(a: i32, b: i32) -> i32 {
    2 * (a * a) + (25 * b * b)
}

fn c(a: i32, b: i32) -> i32 {
    -100 * a + (b * b * b)
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let x: i32 = parts[0].trim().parse().unwrap();
        let y: i32 = parts[1].trim().parse().unwrap();

        let rafael = r(x, y);
        let beto = b(x, y);
        let carlos = c(x, y);

        if rafael > beto && rafael > carlos {
            println!("Rafael ganhou");
        } else if beto > rafael && beto > carlos {
            println!("Beto ganhou");
        } else {
            println!("Carlos ganhou");
        }
    }
}
