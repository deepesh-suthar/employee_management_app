import 'package:flutter/material.dart';

class EmployeeTile extends StatelessWidget {
  final String name;
  final String email;
  final String department;
  final int salary;
  final VoidCallback onDelete;

  const EmployeeTile({
    super.key,
    required this.name,
    required this.email,
    required this.department,
    required this.salary,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(email), Text(department), Text("₹$salary")],
        ),
        trailing: IconButton(
          onPressed: onDelete,
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
