import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:unipool/pages/Home_page/Home_Screen.dart';
import 'package:unipool/splashScreen/splash_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAyFKn0Se7D-VK-wVajOYwQ-V6WOOnj4sc",
      appId: "1:774722763089:android:5d97e35092b3c3be2a3b70",
      messagingSenderId: "774722763089",
      projectId: "unipooluser-bea17",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
