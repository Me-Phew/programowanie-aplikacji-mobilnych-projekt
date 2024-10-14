import 'package:flutter/material.dart';
import 'package:flutter_application/screens/home/home.dart';

void main() {
  runApp(MaterialApp(
    home: const Home(),
  ));
}

// Sandbox do testowania żeby nie rozwalać kody już w apce itp.
class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SandBox"),
          backgroundColor: Colors.grey,
        ),
        body: const Text("SandBox"));
  }
}
