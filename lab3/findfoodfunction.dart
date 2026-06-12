import 'dart:io';

String findfood(String keySearch, List<String> food) {
  for (int i = 0; i < food.length; i++) {
    if (food[i] == keySearch) {
      return 'found';
    }
  }
  return 'not found';
}

void main() {
  List<String> food = ['pizza', 'burger', 'pasta', 'salad'];
  print('enter the food you want to search for:');
  String keySearch = stdin.readLineSync()!;
  String result = findfood(keySearch, food);
  print(result);
}
//more smart code
/*
String findfood(String keySearch, List<String> food) {
  if (food.contains(keySearch)) {
    return 'found';
  }
  return 'not found';
}
*/