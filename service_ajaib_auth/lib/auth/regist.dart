import 'package:flutter/material.dart';
import 'package:service_ajaib/auth/theme.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/primary_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisible = false;
  bool passwordConfirmVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   'APP Flutter\nRegister',
                      //   style: heading2.copyWith(color: textBlack),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/images/logoSA.jpeg',
                        width: 500,
                        height: 220,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Form(
                      child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Address',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          obscureText: !passwordConfirmVisible,
                          decoration: InputDecoration(
                              hintText: 'Enter Your NIK',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          obscureText: !passwordConfirmVisible,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Phone Number ',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          obscureText: !passwordConfirmVisible,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          obscureText: !passwordConfirmVisible,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Password',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          obscureText: !passwordConfirmVisible,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Confirm Password',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomCheckbox(),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'By creating an account, you agree to our',
                            style: regular16pt.copyWith(color: textGrey),
                          ),
                          Text(
                            'Term & Condition',
                            style: regular16pt.copyWith(color: primaryBlue),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  CustomPrimaryButton(
                    buttonColor: primaryBlue,
                    textValue: 'Register',
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: regular16pt.copyWith(color: textGrey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login',
                          style: regular16pt.copyWith(color: primaryBlue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
