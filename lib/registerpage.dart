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

          Row(mainAxisAlignment: MainAxisAlignment.end,children: [
            ElevatedButton(onPressed: () {
checkValid(context);
            }, child: Text('Signup'))
          ],)
        ]),),
    );
  }
  void checkValid(BuildContext ctx)
  {
    if(fname.text==''||uname==''||pwd=='')
      {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          margin: EdgeInsets.all(50),
            behavior: SnackBarBehavior.floating,
            content:Text("error"),
        backgroundColor: Colors.red,));

      }
  }
}
