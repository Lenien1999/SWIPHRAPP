import 'package:flutter/material.dart';
import 'package:swiphrapp/pages/choose_vehicle.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Swiphr App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(143, 0, 255, 1),
        ),
        useMaterial3: true,
      ),
      home: const ChooseVehicle(),
    );
  }
}
