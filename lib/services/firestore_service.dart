import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addEmployee({
    required String name,
    required String email,
    required String department,
    required int salary,
  }) async {
    await firestore.collection('employees').add({
      'name': name,
      'email': email,
      'department': department,
      'salary': salary,
    });
  }

  Stream<QuerySnapshot> getEmployees() {
    return firestore.collection('employees').snapshots();
  }

  Future<void> deleteEmployee(String id) async {
    await firestore.collection('employees').doc(id).delete();
  }
}
