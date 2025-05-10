import 'package:flutter/material.dart';
import 'package:mrbooi_eats/home/home.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
