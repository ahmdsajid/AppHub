import 'package:flutter/material.dart';

class VisitingCardPage extends StatefulWidget {
  const VisitingCardPage({super.key});

  @override
  State<VisitingCardPage> createState() => _VisitingCardPageState();
}

class _VisitingCardPageState extends State<VisitingCardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Text("Visiting Card Page",
        style: TextStyle(fontSize: 30),),
      ),
    );
  }
}