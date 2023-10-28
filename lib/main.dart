import 'package:flutter/material.dart';
import 'package:mymoneycontroll/mysplashpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: 'AIzaSyCmUXGrTQ26ZJdlZJO0QWbHVSrB8UcnfBA', appId: '1:642470464786:android:24d03f826739acd96d37cb', messagingSenderId: '642470464786', projectId: 'mymoneycontroll'));
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mysplash(),
    );
  }
}


