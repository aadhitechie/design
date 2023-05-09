import 'package:designs/core/constant.dart';
import 'package:designs/view/personal_details_screen/profile_picture_screen.dart';
import 'package:designs/widgets/textfield.dart';
import 'package:flutter/material.dart';

import '../../widgets/elevatedbtn.dart';

class UsernameScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(width: 300, child: Image.asset('lib/core/pic1.png')),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Create your username',
                style: TextStyle(color: kWhitecolor, fontSize: 21,fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 35,
              ),
              const TextFieldd(
                hintText: 'Username',
                keyboardType: TextInputType.text,
                obsecure: false,
              ),
              const SizedBox(height: 25),
              const Text(
                'Use first and second name',
                style: TextStyle(color: kWhitecolor),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedBtn(btnName: 'NEXT', onp: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePicScreen()));
})
            ],
          ),
        ),
      ),
    );
  }
}
