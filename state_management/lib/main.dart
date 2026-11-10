
import 'dart:convert';
import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final employee = Employee(
    id: 201,
    name: 'Ravi',
    department: 'IT',
  );

  List<String> employees = [];

  @override
  Widget build(BuildContext context) {
    final json = jsonEncode(employee.toJson());
    final result = Employee.fromJson(jsonDecode(json));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Record Manager'),
      ),
      body: Column(
        children: [
          Text('ID: ${employee.id}'),
          Text('Name: ${employee.name}'),
          Text('Department: ${employee.department}'),
          Text('JSON: $json'),

          ElevatedButton(
            onPressed: () {
              setState(() {
                employees.add(result.name);
              });
            },
            child: const Text('Add Employee'),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(employees[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
