import 'package:triodinamico/screens/welcomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb; //le decimos que queremos traer el bool kIsWeb
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    //con esto sabemos si la plataforma usada es la web
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB6p7jCSGeapLMMXMMjzjb4lwC9vtrS9wQ",
          authDomain: "triodinamico-d1310.firebaseapp.com",
          projectId: "triodinamico-d1310",
          storageBucket: "triodinamico-d1310.appspot.com",
          messagingSenderId: "493720425631",
          appId: "1:493720425631:web:5e0d5caaaf96d1214e7eaa",
          measurementId: "G-TBLY2J9NVL"),
    );
  } else {
    //O cualquier otra
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trio Dinámico App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.white),
      home: const WelcomePage(),
    );
  }
}
