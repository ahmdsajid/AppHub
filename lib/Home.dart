import 'package:apphub/Header_drawar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("AppHub"),
      ),
      body: Container(
        child: Center(
          child: Text("Home page"),
          ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                 HeaderDrawar(),
                 Drawerlist(),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget Drawerlist(){
    return Container();
  }
}