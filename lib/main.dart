import 'package:flutter/material.dart';
import 'package:flutter_application_6/provider.dart';
import 'package:flutter_application_6/qno1.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ProVider(),
      child: const MaterialApp(
        home: QeNo(),
      ),
      );
  }
}
