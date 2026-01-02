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

    final nums = values.map(int.parse).toList();

    //Check for negatives
    final negatives = nums.where((n) => n < 0).toList();
    if(negatives.isNotEmpty) {
      throw Exception(
        'negatives not allowed: ${negatives.join(',')}',
      );
    }

    final validNumbers = nums.where((n) => n <= 1000).toList();

    return validNumbers.reduce((a, b) => a + b);
  }
}