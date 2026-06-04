class Employee {
  final String id;
  final String name;
  final String email;
  final String department;
  final int salary;

  Employee({
    required this.id,
    required this.name,
    required this.email,
    required this.department,
    required this.salary,
  });

  factory Employee.fromMap(Map<String, dynamic> map, String documentId) {
    return Employee(
      id: documentId,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      department: map['deparment'] ?? '',
      salary: map['Salary'] ?? 0,
    );
  }
}
