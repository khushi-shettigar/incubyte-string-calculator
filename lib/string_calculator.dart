class StringCalculator {
  static int add(String numbers) {
    if(numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    String numberSection = numbers;

    //check for custom delimiter
    if(numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2); //get delimiter after //
      numberSection = parts[1];
    }
    final normalized = numberSection.replaceAll('\n', delimiter);
    final values = normalized.split(delimiter);
    return values
        .map((n) => int.parse(n))
        .reduce((a, b) => a + b);
  }
}