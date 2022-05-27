void main(){
  var myList = List<int>.generate(5, (int index) => index);
  print(myList);
  // [0, 1, 2, 3, 4]

  List<String> alphabets=[];
  for(int i=65; i<=90; i++){
    alphabets.add(String.fromCharCode(i));
  }
  print(alphabets);
  // [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z]

}