class DifferenceOfSquares {
  /// > As an Iterable, Iterable.generate(n, generator) is equivalent to const [0, ..., n-1].map(generator)
  /// That's why we added +1 to `number`
  int squareOfSum(int number) {
    int sum = Iterable<int>.generate(number + 1)
        .fold(0, (total, currentNumber) => total + currentNumber);
    return sum * sum;
  }

  int sumOfSquares(int number) {
    int sum = Iterable<int>.generate(number + 1).fold(
        0, (total, currentNumber) => total + (currentNumber * currentNumber));
    return sum;
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
