import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Like extends StatelessWidget {
  const Like({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 300,
          height: 300,
          child: Lottie.network(
              'https://lottie.host/ea094e1c-8d90-4102-ae31-4c768385afae/AF1VCJl8eF.json')),
    );
  }
}
