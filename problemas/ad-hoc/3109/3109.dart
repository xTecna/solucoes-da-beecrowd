import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int q = int.parse(stdin.readLineSync()!);

  List<int> mesas = [];
  for (int i = 0; i <= n; ++i) {
  	mesas.add(i);
  }
  
  for (int i = 0; i < q; ++i) {
    List<int> entrada = stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int e = entrada[0];
    int a = entrada[1];
    
    if (e == 1) {
    	int b = entrada[2];
    	
    	int temp = mesas[a];
    	mesas[a] = mesas[b];
    	mesas[b] = temp;
    } else {
    	int mesa = mesas[a];
    	int resposta = 0;
    	while (mesa != a) {
    		resposta += 1;
    		mesa = mesas[mesa];
    	}
    	
    	print(resposta);
    }
  }
}
