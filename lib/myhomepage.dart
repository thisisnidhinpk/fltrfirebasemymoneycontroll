

// import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Homepg extends StatefulWidget {
   Homepg({super.key,required this.Uname,required this.mid});
final String Uname;
   final String mid;
  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
  TextEditingController mybalance=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome"+widget.Uname),actions: [IconButton(onPressed: () {

      }, icon: Icon(Icons.logout))]),
    body: Padding(padding: EdgeInsets.only(left: 50.0,right: 50.0),
    child: Column(
      children: [SizedBox(height: 10,), TextFormField(controller: mybalance,
        decoration: InputDecoration(border: OutlineInputBorder()),),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: () {
            myWithdraw();
          }, child: Text('Widraw')),
          ElevatedButton(onPressed: () {
            mybalancecheck();
          }, child: Text('Show Balance')),
          ElevatedButton(onPressed: () {
            myDeposit();
          }, child: Text('deposit'))

        ],)
      ],
    ),),
    );
  }
  Future<void> mybalancecheck()async {
    //var docData=FirebaseFirestore.instance.collection('userdetails').get({'uname': uname.text,'passwd':pwd.text});
    var docData = FirebaseFirestore.instance.collection('userdetails').where(
        "uname", isEqualTo: widget.Uname);
    var querySnapshot = await docData.get();
    int amt = 0;
    if (querySnapshot != null) {
      querySnapshot.docs.forEach((doc) {
        // This loop iterates through documents that meet all the conditions
        print(doc.id);
        //print(doc["uname"]);
        amt = doc["amount"];
      });
      mybalance.text = amt.toString();
    }
  }
  Future<void> myDeposit()async {
    //var docData=FirebaseFirestore.instance.collection('userdetails').get({'uname': uname.text,'passwd':pwd.text});
    var docData = FirebaseFirestore.instance.collection('userdetails').where(
        "uname", isEqualTo: widget.Uname);
    var querySnapshot1 = await docData.get();
    int amt = 0;
    if (querySnapshot1 != null) {
      querySnapshot1.docs.forEach((doc) {
        // This loop iterates through documents that meet all the conditions
        print(doc.id);
        //print(doc["uname"]);
        amt = doc["amount"];
      });
      amt = amt + int.parse(mybalance.text.toString());

      var collectionReference =
      FirebaseFirestore.instance.collection("userdetails");

      // Define your conditions
      var query = collectionReference.where("uname", isEqualTo: widget.Uname);

      // Get the documents that match the condition
      var querySnapshot = await query.get();

      querySnapshot.docs.forEach((doc) {
        // Reference each document and specify the fields you want to update
        var docReference = collectionReference.doc(widget.mid);
        print(amt);
        // Update the fields within the document
        docReference.update({
          "amount": amt,

        });
      });
    }
  }

  Future<void> myWithdraw()async {
    //var docData=FirebaseFirestore.instance.collection('userdetails').get({'uname': uname.text,'passwd':pwd.text});
    var docData = FirebaseFirestore.instance.collection('userdetails').where(
        "uname", isEqualTo: widget.Uname);
    var querySnapshot1 = await docData.get();
    int amt = 0;
    if (querySnapshot1 != null) {
      querySnapshot1.docs.forEach((doc) {
        // This loop iterates through documents that meet all the conditions
        print(doc.id);
        //print(doc["uname"]);
        amt = doc["amount"];
      });
      amt = amt - int.parse(mybalance.text.toString());

      var collectionReference =
      FirebaseFirestore.instance.collection("userdetails");

      // Define your conditions
      var query = collectionReference.where("uname", isEqualTo: widget.Uname);

      // Get the documents that match the condition
      var querySnapshot = await query.get();

      querySnapshot.docs.forEach((doc) {
        // Reference each document and specify the fields you want to update
        var docReference = collectionReference.doc(widget.mid);
        print(amt);
        // Update the fields within the document
        docReference.update({
          "amount": amt,

        });
      });
    }
  }
}
