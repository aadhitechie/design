import 'package:designs/view/reels_screen/reels_screen.dart';
import 'package:designs/widgets/elevatedbtn.dart';
import 'package:designs/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                width: 400,
                child: Text(
                    'Password must be between 1-8 Characters and include an upper case letter and a number to protect your safety')),
          ),
          SizedBox(
            height: 35,
          ),
          TextFieldd(
              hintText: "Enter new password",
              keyboardType: TextInputType.text,
              obsecure: false),
              SizedBox(height: 15,),
          TextFieldd(
              hintText: "Confirm new password",
              keyboardType: TextInputType.text,
              obsecure: false),
          SizedBox(
            height: 30,
          ),
          ElevatedBtn(btnName: 'CONFIRM', onp: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReelsScreen()));
})
        ],
      )),
    );
  }
}
