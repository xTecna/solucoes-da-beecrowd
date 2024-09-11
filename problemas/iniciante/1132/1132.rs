use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut x: i32 = input.trim().parse().unwrap();

    let mut input2 = String::new();
    io::stdin().read_line(&mut input2);
    let mut y: i32 = input2.trim().parse().unwrap();

    if x > y {
        let temp = x;
        x = y;
        y = temp;
    }

    let mut soma = 0;
    for i in x..(y + 1) {
        if i % 13 != 0 {
            soma += i;
        }
    }
    println!("{}", soma);
}
