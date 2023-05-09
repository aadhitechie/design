import 'package:designs/core/constant.dart';
import 'package:designs/view/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(58.0),
              child: Image.asset('lib/core/pic1.png'),
            ),
          )
        ],
      ),
    );
  }
}
