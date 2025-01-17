use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let hamekame: Vec<char> = input.trim().chars().collect();

        let mut i: usize = 0;
        while hamekame[i] != 'a' {
            i += 1;
        }

        let mut tamanho1 = 0;
        while hamekame[i] == 'a' {
            tamanho1 += 1;
            i += 1;
        }

        while hamekame[i] != 'a' {
            i += 1;
        }

        let mut tamanho2 = 0;
        while hamekame[i] == 'a' {
            tamanho2 += 1;
            i += 1;
        }

        let mut resposta = "k".to_string();
        for _ in 0..(tamanho1 * tamanho2) {
            resposta.push_str("a");
        }
        println!("{}", resposta);
    }
}
