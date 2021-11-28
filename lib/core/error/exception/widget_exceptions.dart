class WidgetNotFoundException<T> implements Exception {
  @override
  String toString() {
    return "Class doesn't have state -> $T";
  }
}
