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
        title: Text(
          "AppHub",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home page", style: TextStyle(fontSize: 25)),
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

  Widget Drawerlist() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Menuitem(),
        ],
      ),
    );
  }

  Widget Menuitem() {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  Icons.dashboard_outlined,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "Profile Dashboard",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
