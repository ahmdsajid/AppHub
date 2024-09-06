import 'package:flutter/material.dart';

class HeaderDrawar extends StatefulWidget {
  const HeaderDrawar({super.key});

  @override
  State<HeaderDrawar> createState() => _HeaderDrawarState();
}

class _HeaderDrawarState extends State<HeaderDrawar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("asset/1-Copy 59405 copy (1).JPG"))),
          ),
          Text(
            "Mahmudul Sajid",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
