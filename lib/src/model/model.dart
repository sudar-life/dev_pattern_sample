class Model {
  int _count = 0;

  int get counter => _count;
  int incrementCounter() => ++_count;
  int decrementCounter() => --_count;
}
