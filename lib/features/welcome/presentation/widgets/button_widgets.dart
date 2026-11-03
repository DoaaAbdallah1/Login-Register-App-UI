import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  final String text;
  final bool isLogin;
  const ButtonWidgets({super.key, required this.text,  this.isLogin=false});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: isLogin? Colors.black: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 1),
                ),
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 15,
                    color:isLogin? Colors.white: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
  }
}