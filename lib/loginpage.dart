import 'package:flutter/material.dart';
import 'package:mymoneycontroll/registerpage.dart';

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
      body: Padding(
        padding: EdgeInsets.only(left: 50.1,right: 50.1),
      child: Column(children: [
        TextFormField(decoration: InputDecoration(border: OutlineInputBorder()),),
        TextFormField(decoration: InputDecoration(border: OutlineInputBorder()),),
        Row(mainAxisAlignment: MainAxisAlignment.end,children: [TextButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Myregister(),));
        }, child: Text('Not a user? SignUp')),
          ElevatedButton(onPressed: () {

        }, child: Text('Login'))
        ],)
      ]),),
    );
  }
}
