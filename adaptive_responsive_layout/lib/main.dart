
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
        title: const Text('Restaurant Menu'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final items = [
            const Card(
              child: ListTile(title: Text('Burger - Rs.120')),
            ),
            const Card(
              child: ListTile(title: Text('Pizza - Rs.200')),
            ),
            const Card(
              child: ListTile(title: Text('Sandwich - Rs.80')),
            ),
          ];

          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              child: Column(
                children: items,
              ),
            );
          }

          return Row(
            children: items.map(
              (item) => Expanded(child: item),
            ).toList(),
          );
        },
      ),
    );
  }
}
