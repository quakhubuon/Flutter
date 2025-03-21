import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomItemDrawer extends StatelessWidget {
  final IconData icon;
  final String label;

  CustomItemDrawer({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        children: [
          Icon(icon, size: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          )
        ],
      ),
    );
  }
}
