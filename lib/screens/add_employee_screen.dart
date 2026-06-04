import 'package:flutter/material.dart';
import '../services/firestore_service.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({super.key});

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final departmentController = TextEditingController();

  final salaryController = TextEditingController();

  final firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: departmentController,
              decoration: const InputDecoration(labelText: "Department"),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: salaryController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Salary"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                await firestoreService.addEmployee(
                  name: nameController.text,
                  email: emailController.text,
                  department: departmentController.text,
                  salary: int.parse(salaryController.text),
                );

                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("Employee Added")));

                nameController.clear();
                emailController.clear();
                departmentController.clear();
                salaryController.clear();
              },
              child: const Text("Add Employee"),
            ),
          ],
        ),
      ),
    );
  }
}
