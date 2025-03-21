import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  CustomTextField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 60,
            child: Text(label, style: TextStyle(fontSize: 15))
        ),
        SizedBox(width: 15,),
        Expanded(
          child: SizedBox( // Đặt chiều rộng cố định cho TextField
            width: 200,
            height: 30,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 3, horizontal: 3), // Giảm padding
              ),
            ),
          ),
        ),
      ],
    );
  }
}
