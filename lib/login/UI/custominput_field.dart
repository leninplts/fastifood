import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hintText;

  CustomInputField(this.fieldIcon, this.hintText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
        elevation: 15.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
                left: 8.0,
              ),
              child: fieldIcon,
            ),
            Container(
              width: 200,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 0.0,
                  bottom: 2.0,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
