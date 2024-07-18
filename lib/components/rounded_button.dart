import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  RoundedButton({this.color,this.title,this.onPressed});
  final String ?title;
  final Color ?color;
  final VoidCallback ?onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title!,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}