import 'package:controlfb/paige/singIn.dart';
import 'package:controlfb/src/colors.dart';
import 'package:controlfb/src/getxthems.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'paige/MyHomePage.dart';
import 'paige/accountSecreen.dart';
import 'paige/tlbaty.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: ccolors().greenn),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
