import 'package:flutter/material.dart';
import '../screens/add_employee_screen.dart';
import '../screens/employee_list_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final pages = [EmployeeListScreen(), const AddEmployeeScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Employee Management")),
      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Employees"),
          BottomNavigationBarItem(icon: Icon(Icons.person_add), label: "Add"),
        ],
      ),
    );
  }
}
