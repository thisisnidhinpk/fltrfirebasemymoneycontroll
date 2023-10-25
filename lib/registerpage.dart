import 'package:flutter/material.dart';

class Myregister extends StatefulWidget {
  const Myregister({super.key});

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 50.1,right: 50.1),
        child: Column(children: [
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Fullname'),),
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Username'),),
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Password'),),
          Stack(children: [ CircleAvatar(backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.kindpng.com%2Fimgv%2FiThJmoo_white-gray-circle-avatar-png-transparent-png%2F&psig=AOvVaw1usEfNbD9mgrTCXtTcoBhn&ust=1698282212138000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKCTrcWGkIIDFQAAAAAdAAAAABAJ'),)],),
          Row(mainAxisAlignment: MainAxisAlignment.end,children: [
            ElevatedButton(onPressed: () {

            }, child: Text('Signup'))
          ],)
        ]),),
    );
  }
}
