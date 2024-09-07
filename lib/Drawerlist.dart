import 'package:flutter/material.dart';

enum Drawersection {
  Dashboard,
  profile,
  visiting_card,
  BMI_Calculator,
}

class Drawerlist extends StatefulWidget {
  final Function(Drawersection) onItemTap;
  final Drawersection currentPage;

  const Drawerlist({Key? key, required this.onItemTap, required this.currentPage}) : super(key: key);

  @override
  State<Drawerlist> createState() => _DrawerlistState();
}

class _DrawerlistState extends State<Drawerlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Menuitem(
            1,
            "Dashboard",
            Icons.dashboard_outlined,
            widget.currentPage == Drawersection.Dashboard,
          ),
          Menuitem(
            2,
            "Profile",
            Icons.account_box_outlined,
            widget.currentPage == Drawersection.profile,
          ),
          const Divider(),
          Menuitem(
            3,
            "Visiting Card",
            Icons.card_travel,
            widget.currentPage == Drawersection.visiting_card,
          ),
          Menuitem(
            4,
            "BMI Calculator",
            Icons.calculate_outlined,
            widget.currentPage == Drawersection.BMI_Calculator,
          ),
        ],
      ),
    );
  }

  Widget Menuitem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);  // Close the drawer on tap
          setState(() {
            if (id == 1) {
              widget.onItemTap(Drawersection.Dashboard);
            } else if (id == 2) {
              widget.onItemTap(Drawersection.profile);
            } else if (id == 3) {
              widget.onItemTap(Drawersection.visiting_card);
            } else if (id == 4) {
              widget.onItemTap(Drawersection.BMI_Calculator);
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
                  color: selected ? Colors.blue : Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: selected ? Colors.blue : Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
