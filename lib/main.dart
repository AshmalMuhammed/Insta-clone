import 'package:flutter/material.dart';
import 'package:instagramui/login1.dart';







void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home:Login1(),
        
      
      );
    
  }
}