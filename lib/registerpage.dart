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
          Stack(children: [ CircleAvatar(radius: MediaQuery.of(context).size.width*0.08,backgroundImage: AssetImage('images/face.png'),
          ),Positioned(child: IconButton(onPressed: () {
            
          },icon: Icon(Icons.add_a_photo)),bottom: -10,left: 80,)],),
          Row(mainAxisAlignment: MainAxisAlignment.end,children: [
            ElevatedButton(onPressed: () {

            }, child: Text('Signup'))
          ],)
        ]),),
    );
  }
}
