import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final titleText;
  final hintText;
  final isHidePassword;

  CustomTextField({this.titleText, this.hintText, this.isHidePassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$titleText', style: textFieldHeadStyle),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            obscureText: isHidePassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '$hintText',
            ),
          ),
        ),
      ],
    );
  }
}
