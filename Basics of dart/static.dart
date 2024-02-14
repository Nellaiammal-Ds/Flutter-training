class MathUtils {
  static const double pi = 3.14159; // Static variable

  static double calculateCircleArea(double radius) {
    return pi * radius * radius;
  }
}

void main() {
  double radius = 5.0;
  double area = MathUtils.calculateCircleArea(radius);
  print('Area of the circle with radius $radius: $area');
}
