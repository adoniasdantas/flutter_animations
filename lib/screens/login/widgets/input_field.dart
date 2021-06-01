import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final IconData icon;

  const InputField({this.hint, this.obscureText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white24,
            width: 0.5,
          ),
        ),
      ),
      child: TextFormField(
        obscureText: obscureText,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding: const EdgeInsets.fromLTRB(5, 30, 30, 30),
        ),
      ),
    );
  }
}
