import 'package:designs/core/constant.dart';
import 'package:designs/view/auth_screen/phn_login_screen.dart';
import 'package:designs/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../../widgets/elevatedbtn.dart';

class LoginScreen extends StatelessWidget {
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
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(width: 300, child: Image.asset('lib/core/pic1.png')),
              const TextFieldd(
                hintText: 'Email / username',
                keyboardType: TextInputType.text,
                obsecure: false,
              ),
              const SizedBox(height: 25),
              const TextFieldd(
                  hintText: 'Password',
                  keyboardType: TextInputType.streetAddress,
                  obsecure: true),
              const SizedBox(height: 25),
               ElevatedBtn(onp: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhnLoginScreen()));
}
,
                btnName: 'LOG IN',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Trouble loggin in?',
                style: TextStyle(color: kWhitecolor),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(color: kWhitecolor),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.white)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 500,
                decoration: BoxDecoration(
                    color: kWhitecolor,
                    borderRadius: BorderRadius.circular(10)),
                child: SignInButton(Buttons.Google,
                    text: 'Continue with google',
                    elevation: 0,
                    onPressed: () {}),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 500,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(63, 113, 255, 10),
                      borderRadius: BorderRadius.circular(10)),
                  child: SignInButton(
                      text: 'Continue with facebook',
                      Buttons.FacebookNew,
                      elevation: 0,
                      onPressed: () {})),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Dont have an account? sign up',
                style: TextStyle(color: kWhitecolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
