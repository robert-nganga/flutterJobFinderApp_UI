import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  bool isActive = false;
  final Function onTap;
  BottomNavItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: isActive ? Colors.black : Colors.black26,
            size: 30.0,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.black : Colors.black26,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
