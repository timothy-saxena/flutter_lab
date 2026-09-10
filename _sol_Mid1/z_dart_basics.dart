void main() {
  // Variables and data types.
  String name = 'Rama';
  int marks = 85;
  double percentage = 85.5;
  bool passed = true;

  // Collections.
  List<String> subjects = ['Flutter', 'Dart', 'UI Design'];
  Set<int> uniqueNumbers = {1, 2, 2, 3};
  Map<String, dynamic> student = {'name': name, 'marks': marks};

  // Condition and loop.
  if (marks >= 40) {
    print('$name passed');
  } else {
    print('$name failed');
  }

  for (final subject in subjects) {
    print(subject);
  }

  // Function call and string interpolation.
  print('Total: ${add(10, 20)}');
  print('Percentage: $percentage, passed: $passed');
  print('Unique values: $uniqueNumbers');
  print('Student: ${student['name']}');
}

int add(int first, int second) {
  return first + second;
}
