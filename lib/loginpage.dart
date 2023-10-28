import 'package:flutter/material.dart';
import 'package:mymoneycontroll/registerpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key, required this.title});
  final String title;
  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  TextEditingController fname=new TextEditingController();
  TextEditingController uname=new TextEditingController();
  TextEditingController pwd=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 50.1,right: 50.1),
      child: Column(children: [
        TextFormField(controller: uname,
          decoration: InputDecoration(border: OutlineInputBorder()),),
        TextFormField(controller: pwd
        ,decoration: InputDecoration(border: OutlineInputBorder()),),
        Row(mainAxisAlignment: MainAxisAlignment.end,children: [TextButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Myregister(),));
        }, child: Text('Not a user? SignUp')),
          ElevatedButton(onPressed: () {
            mylogin();
        }, child: Text('Login'))
        ],)
      ]),),
    );
  }
  Future<void> mylogin()async{
    //var docData=FirebaseFirestore.instance.collection('userdetails').get({'uname': uname.text,'passwd':pwd.text});
    var docData=FirebaseFirestore.instance.collection('userdetails').where("uname", isEqualTo: uname.text).where("passwd", isEqualTo: pwd.text);
    var querySnapshot = await docData.get();
    querySnapshot.docs.forEach((doc) {
      // This loop iterates through documents that meet all the conditions
      print(doc.id);
      print(doc.data());
    });
  }
}
