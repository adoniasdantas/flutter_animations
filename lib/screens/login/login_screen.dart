import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/home/home_screen.dart';

import 'widgets/form_container.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/stagger_animation.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2,
      ),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 70,
                        bottom: 32,
                      ),
                      child: Image.asset(
                        'assets/images/tickicon.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FormContainer(),
                    SignUpButton(),
                  ],
                ),
                StaggerAnimation(
                  controller: _animationController.view,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
