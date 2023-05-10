import 'package:designs/core/constant.dart';
import 'package:designs/view/personal_details_screen/personal_details.dart';
import 'package:designs/widgets/elevatedbtn.dart';
import 'package:designs/widgets/otp_textfield.dart';
import 'package:flutter/material.dart';

class NumberOtpScreen extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NumberOtpScreen> {
  final TextEditingController _digit1Controller = TextEditingController();
  final TextEditingController _digit2Controller = TextEditingController();
  final TextEditingController _digit3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 80,),
                    CircleAvatar(
                      child: Image.asset(
                        'lib/core/lock.png',
                      ),
                      radius: 60,
                      backgroundColor: themeColor,
                    ),
                  Center(
                    child: Text(
                      'Confirm code',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const  SizedBox(
                      height: 15,
                    ),
                   const SizedBox(
                        width: 200,
                        child: Text(
                            'Enter 6 digit code from your two factor autenticator APP')),
                   const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Expanded(child: OtpSpaceScreen()),
                        SizedBox(width: 16.0),
                        Expanded(child: OtpSpaceScreen()),
                        SizedBox(width: 16.0),
                        Expanded(child: OtpSpaceScreen()),
                        SizedBox(width: 50.0),
                        Expanded(child: OtpSpaceScreen()),
                        SizedBox(width: 16.0),
                        Expanded(child: OtpSpaceScreen()),
                        SizedBox(width: 16.0),
                        Expanded(child: OtpSpaceScreen()),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedBtn(
                        btnName: '6 DIGITS LEFT',
                        onp: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PersonalDetailsScreen()));
                        }),
                    const SizedBox(
                      height: 16.0,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: kTransparent,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: themeColor)),
                width: 300,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kBlackcolor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                  ),
                  child: const Text(
                    'Resend Linkk',
                    style: TextStyle(fontSize: 20, color: kWhitecolor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
