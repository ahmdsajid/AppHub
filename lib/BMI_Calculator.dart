import 'package:flutter/material.dart';

class BmiCalculatorPage extends StatefulWidget {
  const BmiCalculatorPage({super.key});

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("BMI Calculator Page",
        style: TextStyle(fontSize: 30),),
      ),
    );
  }
}