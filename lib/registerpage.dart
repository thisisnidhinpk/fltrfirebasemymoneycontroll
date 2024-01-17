import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Myregister extends StatefulWidget {
  const Myregister({super.key});

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  TextEditingController fname=new TextEditingController();
  TextEditingController uname=new TextEditingController();
  TextEditingController pwd=new TextEditingController();
  TextEditingController amount=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 50.1,right: 50.1),
        child: Column(children: [
          TextFormField(
            controller: fname,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Fullname'
            ),),
          TextFormField(
            controller: uname,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username'
            ),),
          TextFormField(
            controller: pwd,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password'
            ),),
          TextFormField(
            controller: amount,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Initial deposit'
            ),),

          Row(mainAxisAlignment: MainAxisAlignment.end,children: [
            ElevatedButton(onPressed: () {
checkValid(context);
            }, child: Text('Signup'))
          ],)
        ]),),
    );
  }
 Future<void> checkValid(BuildContext ctx) async
  {
    //WidgetsFlutterBinding.ensureInitialized();
    //await Firebase.initializeApp(options: FirebaseOptions(apiKey: 'AIzaSyCmUXGrTQ26ZJdlZJO0QWbHVSrB8UcnfBA', appId: '1:642470464786:android:24d03f826739acd96d37cb', messagingSenderId: '642470464786', projectId: 'mymoneycontroll'));
    if(fname.text==''||uname==''||pwd=='')
      {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          margin: EdgeInsets.all(50),
            behavior: SnackBarBehavior.floating,
            content:Text("error"),
        backgroundColor: Colors.red,));

      }
    else
      {
        var docData=FirebaseFirestore.instance.collection('userdetails').doc();

        final user= {
          'id': docData.id,

          'fullname': fname.text,
          'uname': uname.text,
          'passwd':pwd.text,
          'amount':amount.text
        };

        var r= await docData.set(user);
      }
  }
}
