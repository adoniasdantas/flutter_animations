import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/login/widgets/input_field.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            InputField(
              hint: 'Username',
              obscureText: false,
              icon: Icons.person_outline,
            ),
            InputField(
              hint: 'Password',
              obscureText: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
