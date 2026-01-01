import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_string_calculator/string_calculator.dart';

void main() {
  test('return 0 for empty string', () {
    final result = StringCalculator.add("");
    expect(result, 0);
  });
}