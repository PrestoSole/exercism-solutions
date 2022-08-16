import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/hello_world.dart';

void main() {
  test('Say Hello', () {
    expect(HelloWorld().Hello(), equals('Hello, world!'));
  });
}
