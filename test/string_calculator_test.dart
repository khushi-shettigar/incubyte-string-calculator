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

  test('New lines between numbers are supported', () {
    expect(StringCalculator.add("1\n2,3"), 6);
  });

  test('Custom delimiter is supported', () {
    expect(StringCalculator.add("//;\n1;2"), 3);
  });

  test('Negative numbers throw exception', () {
    expect(
        () => StringCalculator.add("1,-2,3,-4"),
        throwsA(
            isA<Exception>().having(
                  (e) => e.toString(),
              'message',
              contains('negatives not allowed: -2,-4'),
            )
        )
    );
  });

  test('Numbers bigger than 1000 are ignored', () {
    expect(StringCalculator.add("2,1001"), 2);
  });

  test('Delimiter of any length is supported', () {
    expect(StringCalculator.add("//[***]\n1***2***3"), 6);
  });
  
  test('Multiple delimiters are supported', () {
    expect(StringCalculator.add("//[*][%]\n1*2%3"), 6);
  });

  test('Multiple delimiters of any length are supported', () {
    expect(StringCalculator.add("//[***][%%]\n1***2%%3"), 6);
  });
}