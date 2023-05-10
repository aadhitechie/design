import 'package:designs/core/constant.dart';
import 'package:designs/view/auth_screen/phn_login_screen.dart';
import 'package:designs/view/personal_details_screen/username_screen.dart';
import 'package:designs/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../../widgets/elevatedbtn.dart';

class PersonalDetailsScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                SizedBox(width: 300, child: Image.asset('lib/core/pic1.png')),
                const TextFieldd(
                  hintText: 'Full Name',
                  keyboardType: TextInputType.text,
                  obsecure: false,
                ),
                const SizedBox(height: 25),
                const TextFieldd(
                    hintText: 'Password',
                    keyboardType: TextInputType.streetAddress,
                    obsecure: true),
                const SizedBox(height: 25),
                  const TextFieldd(
                    hintText: 'Date of birth',
                    keyboardType: TextInputType.streetAddress,
                    obsecure: true),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'You must be over 18 years old',
                  style: TextStyle(color: kWhitecolor),
                ),
                SizedBox(height: 35,),
                ElevatedBtn(btnName: 'NEXT', onp: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => UsernameScreen()));
        })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
