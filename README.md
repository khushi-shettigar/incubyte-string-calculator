# String Calculator – TDD Kata (Incubyte Assessment)

This repository contains an implementation of the String Calculator Kata completed as part of the Incubyte Software Craftsperson hiring assessment.

The solution is implemented using Dart with Flutter and follows Test-Driven Development (TDD) practices. The commit history reflects the Red → Green → Refactor approach.

## Tech Stack
- Flutter
- Dart
- flutter_test

## How to Run the Tests

Ensure Flutter is installed and available in your system PATH.

Run the following command from the project root:

flutter test

## Features Implemented
- Returns 0 for an empty string
- Supports a single number
- Supports any number of comma-separated values
- Supports new line characters as delimiters
- Supports custom delimiters
- Supports delimiters of any length
- Supports multiple delimiters
- Supports multiple delimiters of any length
- Ignores numbers greater than 1000
- Throws an exception for negative numbers and lists all negative values
- Implemented incrementally using TDD

## TDD Approach

Each requirement was implemented by:
1. Writing a failing test
2. Writing the minimum code required to pass the test
3. Refactoring while keeping all tests green

The Git commit history shows the step-by-step evolution of the solution.

## Project Structure
- lib/string_calculator.dart – Core String Calculator implementation
- test/string_calculator_test.dart – Unit tests covering all kata requirements

## Author
Kavana Shettigar


