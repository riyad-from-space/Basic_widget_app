import 'package:flutter/material.dart';

import 'counter_app.dart';
import 'gridview.dart';
import 'listview_dart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: GridViewScreen());
  }
}


