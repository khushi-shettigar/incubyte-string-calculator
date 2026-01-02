class StringCalculator {
  static int add(String numbers) {
    if(numbers.isEmpty) {
      return 0;
    }

    final normalized = numbers.replaceAll('\n', ',');
    final parts = normalized.split(',');
    return parts
        .map((n) => int.parse(n))
        .reduce((a, b) => a + b);
  }
}