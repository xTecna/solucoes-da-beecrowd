use std::io;

fn main() {
    let nomes: [&str; 4] = ["Rolien", "Naej", "Elehcim", "Odranoel"];

    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for i in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let k: i32 = input.trim().parse().unwrap();

        for j in 0..k {
            input = String::new();
            io::stdin().read_line(&mut input);
            let feedback: i32 = input.trim().parse().unwrap();

            println!("{}", nomes[(feedback - 1) as usize]);
        }
    }
}
