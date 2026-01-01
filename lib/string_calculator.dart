class StringCalculator {
  static int add(String numbers) {
    if(numbers.isEmpty) {
      return 0;
    }

    if(numbers.contains(',')) {
      final parts = numbers.split(',');
      return parts
          .map((n) => int.parse(n))
          .reduce((a, b) => a + b);
    }

    return int.parse(numbers);
  }
}