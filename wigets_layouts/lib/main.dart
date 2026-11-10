
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Dashboard'),
      ),
      body: ListView(
        children: [
          const Column(
            children: [
              Text('Patient Information'),
              Text('Welcome to Hospital Dashboard'),
            ],
          ),

          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                Text('Patient Name: Arun'),
                Text('Patient ID: P101'),
                Text('Age: 35'),
              ],
            ),
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.person),
              Icon(Icons.medical_services),
              Icon(Icons.local_hospital),
            ],
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Assigned Doctor'),
              subtitle: Text('Dr. Kumar'),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.meeting_room),
              title: Text('Room Number'),
              subtitle: Text('205'),
            ),
          ),

          const ListTile(title: Text('Flutter')),
          const ListTile(title: Text('Cloud Computing')),
          const ListTile(title: Text('Programming')),
        ],
      ),
    );
  }
}
