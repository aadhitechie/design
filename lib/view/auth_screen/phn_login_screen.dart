import 'package:designs/core/constant.dart';
import 'package:designs/view/otp_screen/number_otp_screen.dart';
import 'package:designs/widgets/textfield.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../widgets/elevatedbtn.dart';

class PhnLoginScreen extends StatelessWidget {
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
                SizedBox(width: 200, child: Image.asset('lib/core/pic1.png')),
                TextFieldd(
                  hintText: 'Email',
                  keyboardType: TextInputType.text,
                  obsecure: false,
                ),
                const SizedBox(height: 25),
                Container(
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
                          'Phone number',
                          style: TextStyle(color: themeColor),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: kWhitecolor),
                        keyboardType: TextInputType.number,
                        decoration:  InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Flag.fromCode(
                              FlagsCode.US,
                              height: 10,
                              width: 10,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedBtn(
                  onp: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) =>NumberOtpScreen ()));
        },
                  btnName: 'NEXT',
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 50,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
