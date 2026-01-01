import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_string_calculator/string_calculator.dart';

void main() {
  test('return 0 for empty string', () {
    final result = StringCalculator.add("");
    expect(result, 0);
  });

  test('Single number returns its value', () {
    expect(StringCalculator.add("1"), 1);
  });

  test('Two numbers separated by comma return their sum', () {
    expect(StringCalculator.add("1,5"), 6);
  });

  test('Multiple numbers return their sum', () {
    expect(StringCalculator.add("1,2,3,4"), 10);
  });
}