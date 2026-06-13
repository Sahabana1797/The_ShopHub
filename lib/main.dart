import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:flutter_application_1/firebase_options.dart';
import 'auth_layout.dart';
Future <void> main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MaterialApp(home: AuthLayout(),debugShowCheckedModeBanner: false));
} 