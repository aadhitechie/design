import 'package:designs/core/constant.dart';
import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({super.key, required this.btnName, required this.onp});
  final String btnName;
  final Function() onp;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: themeColor, borderRadius: BorderRadius.circular(30)),
      width: 900,
      height: 60,
      child: ElevatedButton(
        onPressed: onp,
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(themeColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))),
        ),
        child:  Text(
          btnName,
          style: TextStyle(fontSize: 20,color: kWhitecolor),
        ),
      ),
    );
  }
}
