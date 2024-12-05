use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for i in (1..(4*n)).step_by(4) {
        println!("{} {} {} PUM", i, i + 1, i + 2);
    }
}
