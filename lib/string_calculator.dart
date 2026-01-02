class StringCalculator {
  static int add(String numbers) {
    if(numbers.isEmpty) {
      return 0;
    }

    String delimiterPattern = '[,\n]';
    String numbersPart = numbers;

    //Handle custom delimiter of any length
    if(numbers.startsWith('//')) {
      final delimiterEndIndex = numbers.indexOf('\n');
      final delimiterSection = numbers.substring(2, delimiterEndIndex);

      if(delimiterSection.startsWith('[') && delimiterSection.endsWith(']')) {
        //Any length delimiter
        final delimiter = delimiterSection.substring(1, delimiterSection.length - 1);
        delimiterPattern = RegExp.escape(delimiter);
      } else {
        // Single character delimiter
        delimiterPattern = RegExp.escape(delimiterSection);
      }

      numbersPart = numbers.substring(delimiterEndIndex + 1);
    }

    final parts = numbersPart.split(RegExp(delimiterPattern));
    final nums = parts.map(int.parse).toList();


    //Check for negatives
    final negatives = nums.where((n) => n < 0).toList();
    if(negatives.isNotEmpty) {
      throw Exception(
        'negatives not allowed: ${negatives.join(',')}',
      );
    }

    final validNumbers = nums.where((n) => n <= 1000).toList();

    return validNumbers.isEmpty ? 0 : validNumbers.reduce((a, b) => a + b);
  }
}