int get lineNumber {
  try {
    final re = RegExp(r'^#1[ \t]+.+:(?<line>[0-9]+):[0-9]+\)$', multiLine: true);
    final match = re.firstMatch(StackTrace.current.toString());
    return (match == null) ? -1 : int.parse(match.namedGroup('line') ?? '-1');
  } catch (e) {
    return 0;
  }
}
