import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// MyApp class
class MyApp extends StatelessWidget {
  /// MyApp constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

/// MainPage class
class MyHomePage extends StatefulWidget {
  /// MainPage constructor
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _selectedColor = Colors.white;

  Color _fetchRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  void _onTap() {
    setState(() {
      _selectedColor = _fetchRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _onTap,
        child: AnimatedContainer(
          color: _selectedColor,
          duration: const Duration(milliseconds: 250),
          child: const Center(
            child: Text(
              'Hey there',
            ),
          ),
        ),
      ),
    );
  }
}
