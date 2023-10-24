import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key, required this.title});
  final String title;
  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('jjjjj'),),
    );
  }
}
