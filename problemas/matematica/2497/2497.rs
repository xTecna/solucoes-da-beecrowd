use std::io;

fn main() {
    let mut teste = 1;

    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if (n == -1) {
            break;
        }

        println!("Experiment {}: {} full cycle(s)", teste, n / 2);
        teste += 1;
    }
}
