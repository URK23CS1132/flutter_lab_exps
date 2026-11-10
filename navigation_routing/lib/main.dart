
import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/details': (context) => const DetailsPage(),
      },
    ),
  );
}
