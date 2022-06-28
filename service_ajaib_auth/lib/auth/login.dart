import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_ajaib/auth/regist.dart';
import 'package:service_ajaib/auth/theme.dart';
import 'package:service_ajaib/main.dart';
import 'package:service_ajaib/widgets/custom_checkbox.dart';
import 'package:service_ajaib/widgets/primary_button.dart';
import '../bottom_navigator/bottomnav.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  // ignore: override_on_non_overriding_member
  void disponse() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logoSA.jpeg',
                    width: 99,
                    height: 4,
                  )
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                  child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14)),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box),
                          hintText: 'Enter Your Email',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
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
                      controller: passwordController,
                      obscureText: !passwordVisible,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter Your Password',
                          hintStyle: heading6.copyWith(color: textGrey),
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
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
                  Text(
                    'Remember me',
                    style: regular16pt,
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  width: double.infinity,
                  child: FloatingActionButton.extended(
                    heroTag: "login",
                    backgroundColor: const Color(0xff0084FE),
                    onPressed: () => signIn(),
                    label: const Text("Login"),
                  ),
                  /*child: Text(
              'Login',
              style: TextStyle(color: Colors.indigo[500]),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),*/
                ),
              ),
              SizedBox(
                height: 24,
              ),
              // Center(
              //   child: Text(
              //     'Or',
              //     style: heading6.copyWith(color: textGrey),
              //   ),
              // ),
              // SizedBox(
              //   height: 24,
              // ),
              // CustomPrimaryButton(
              //   buttonColor: colorLight,
              //   textValue: 'Login with Google',
              //   textColor: textBlack,
              // ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have account yet ? ',
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Join Service Ajaib',
                      style: regular16pt.copyWith(color: primaryBlue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}
