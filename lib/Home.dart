import 'package:apphub/BMI_Calculator.dart';
import 'package:apphub/Dashboard.dart';
import 'package:apphub/Header_drawar.dart';
import 'package:apphub/Profile.dart';
import 'package:apphub/Visiting_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentpage = Drawersection.Dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentpage == Drawersection.Dashboard) {
      container = Dashboardpage();
    } else if (currentpage == Drawersection.profile) {
      container = Profilepage();
    } else if (currentpage == Drawersection.visiting_card) {
      container = VisitingCardPage();
    } else if (currentpage == Drawersection.BMI_Calculator) {
      container = BmiCalculatorPage();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "AppHub",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: container,
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
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Menuitem(
            1,
            "Dashboard",
            Icons.dashboard_outlined,
            currentpage == Drawersection.Dashboard ? true : false,
          ),
          Menuitem(
            2,
            "Profile",
            Icons.account_box_outlined,
            currentpage == Drawersection.profile ? true : false,
          ),
          const Divider(),
          Menuitem(
            3,
            "Visiting Card",
            Icons.card_travel,
            currentpage == Drawersection.visiting_card ? true : false,
          ),
          Menuitem(
            4,
            "BMI Calculator",
            Icons.calculate_outlined,
            currentpage == Drawersection.BMI_Calculator ? true : false,
          ),
        ],
      ),
    );
  }

  Widget Menuitem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentpage = Drawersection.Dashboard;
            } else if (id == 2) {
              currentpage = Drawersection.profile;
            } else if (id == 3) {
              currentpage = Drawersection.visiting_card;
            } else if (id == 4) {
              currentpage = Drawersection.BMI_Calculator;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Drawersection {
  Dashboard,
  profile,
  visiting_card,
  BMI_Calculator,
}