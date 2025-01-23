import 'package:flutter_test/flutter_test.dart';
import 'package:githubactionsdemo/math_utils.dart';

void main() {
  group('MathUtils Tests', () {
    test('add should return the sum of two integers', () {
      final result = add(3, 5);
      expect(result, 8); // Checks if the result matches the expected value
    });

    test('subtract should return the difference of two integers', () {
      final result = subtract(10, 4);
      expect(result, 6); // Checks if the result matches the expected value
    });
  });
}
