import 'package:designs/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OtpSpaceScreen extends StatelessWidget {
  const OtpSpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration:  InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: themeColor)),
                            counterText: '',
                            border: OutlineInputBorder(borderSide: BorderSide(color: kTransparent)),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: themeColor))
                          ),
                        );
  }
}
