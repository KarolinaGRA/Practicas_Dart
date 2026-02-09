void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
    //print ('desde periodic $value');
  }).take(5);
}
