import 'dart:io';
 
void main() {
    int n = int.parse(stdin.readLineSync()!);
    
    int resposta = 0;
    for (int i = 0; i < n; ++i) {
        List<int> entrada = stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
        int latas = entrada[0];
        int copos = entrada[1];
        
        if (latas > copos) {
            resposta += copos;
        }
    }
    
    print(resposta);
}