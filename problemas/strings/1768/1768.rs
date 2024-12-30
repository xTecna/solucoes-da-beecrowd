use std::io;

fn imprimeTriangulo(tamanho: i32, deslocamento: i32) {
    let mut espacos = tamanho / 2 + deslocamento;
    let mut asteriscos = 1;

    while asteriscos <= tamanho {
        let mut linha = String::new();
        for _ in 0..espacos {
            linha += " ";
        }
        for _ in 0..asteriscos {
            linha += "*";
        }
        println!("{}", linha);

        espacos -= 1;
        asteriscos += 2;
    }
}

fn main() {
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let n: i32 = input.trim().parse().unwrap();

                imprimeTriangulo(n, 0);
                imprimeTriangulo(3, n/2 - 1);
                println!("");
            }
            Err(_) => {
                break;
            }
        }
    }
}
