import 'package:flutter/material.dart';

import '../core/constant.dart';

class TextFieldd extends StatelessWidget {
  const TextFieldd(
      {super.key, required this.hintText, required this.keyboardType, required this.obsecure});
  final String hintText;
  final TextInputType keyboardType;
  final bool obsecure;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: themeColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 11.0, top: 8),
            child: Text(
              hintText,
              style: TextStyle(color: themeColor),
            ),
          ),
          TextFormField(
            obscureText: obsecure,
            obscuringCharacter: '●',
            style: TextStyle(color: kWhitecolor),
            keyboardType: keyboardType,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
