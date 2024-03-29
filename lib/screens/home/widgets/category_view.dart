import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Trabalho', 'Estudos', 'Casa'];

  int _category = 0;

  void selectForward() {
    setState(() {
      if (_category < 2) {
        _category++;
      }
    });
  }

  void selectBackward() {
    setState(() {
      if (_category > 0) {
        _category--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          disabledColor: Colors.white30,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: selectBackward,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.2,
          ),
        ),
        IconButton(
          disabledColor: Colors.white30,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onPressed: selectForward,
        ),
      ],
    );
  }
}
