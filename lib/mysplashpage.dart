import 'package:flutter/material.dart';
import 'package:mymoneycontroll/loginpage.dart';

class Mysplash extends StatefulWidget {
  const Mysplash({super.key});

  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    jumpscreen();
  }
  jumpscreen() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mylogin(title: 'title'),));
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body: Padding(
            padding: EdgeInsets.all(50),
          child: Center(child: Image.asset('assets/images/financeapp.png'),) ,),
      )
    ;
  }
}
