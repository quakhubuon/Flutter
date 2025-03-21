import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gear/views/cart.dart';
import 'package:gear/views/checkout.dart';
import 'package:gear/views/detail.dart';
import 'package:gear/views/history.dart';
import 'package:gear/views/home.dart';
import 'package:gear/views/auth/login.dart';
import 'package:gear/views/order.dart';
import 'package:gear/views/auth/register.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          //foregroundColor: Colors.white
          centerTitle: true,
        )
      ),
      home: const HistoryOrder(),
    );
  }
}


