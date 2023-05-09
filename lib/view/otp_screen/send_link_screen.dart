import 'package:designs/view/otp_screen/mail_otp_Screen.dart';
import 'package:designs/view/password_screen/password_screeen.dart';
import 'package:designs/widgets/elevatedbtn.dart';
import 'package:designs/widgets/textfield.dart';
import 'package:flutter/material.dart';


class SendLinkScreen extends StatelessWidget {
  const SendLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(width: 400,
            child: Text('Please, enter your email address or mobile phone number. You will receive a link to create a new password via email')),
        ),
        SizedBox(height: 35,),
        TextFieldd(hintText: "Email/Mobile", keyboardType: TextInputType.text, obsecure: false),
        SizedBox(height: 30,),
        ElevatedBtn(btnName: 'SEND LINK', onp: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => MailOtpScreen()));
})
      ],
    )),);
  }
}