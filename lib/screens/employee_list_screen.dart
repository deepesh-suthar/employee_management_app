import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../services/firestore_service.dart';
import '../widgets/employee_tile.dart';

class EmployeeListScreen extends StatelessWidget {
  EmployeeListScreen({super.key});

  final firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestoreService.getEmployees(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final docs = snapshot.data!.docs;

        return ListView.builder(
          itemCount: docs.length,
          itemBuilder: (context, index) {
            final employee = docs[index];

            return EmployeeTile(
              name: employee['name'],
              email: employee['email'],
              department: employee['department'],
              salary: employee['salary'],
              onDelete: () async {
                await firestoreService.deleteEmployee(employee.id);
              },
            );
          },
        );
      },
    );
  }
}
