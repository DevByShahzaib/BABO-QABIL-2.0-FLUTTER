import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/password_logic.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController password = TextEditingController();
  var result;
  bool isVisible = true;

  abc() {
    var obj1 = Password();
    var passwordInOrder = obj1.generatePassword(10, 3, 3);
    var obj2 = StringShuffler(passwordInOrder);
    result = obj2.shuffled;
    password.text = result;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/top_banner.png',
                width: 1200,
                height: 225,
              ),
              Positioned(
                  left: 270,
                  top: 75,
                  child: SizedBox(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFFFFFF),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(color: Color(0xff2F80ED)),
                        )),
                  )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'New User? Get Started Now',
                style: GoogleFonts.roboto(
                    fontSize: 24, color: const Color(0xff828282)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/Google Icon.png'),
                  Image.asset('assets/images/Facebook Icon.png'),
                  Image.asset('assets/images/Twitter Logo.png'),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  const Positioned(
                    child: Divider(
                      thickness: 1,
                      endIndent: 250,
                      color: Color(0xff828282),
                    ),
                  ),
                  Positioned(
                      left: 200,
                      child: Text(
                        'OR',
                        style: GoogleFonts.cambo(fontSize: 15),
                      )),
                  const Positioned(
                    // left: 300,
                    child: Divider(
                      thickness: 1,
                      indent: 250,
                      color: Color(0xff828282),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.33,
                // decoration: BoxDecoration(color: Colors.lightBlue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 268),
                      child: Text('Email ID*'),
                    ),
                    Material(
                      elevation: 2,
                      shadowColor: const Color(0xff2F80ED),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: const BorderSide(
                                      color: Color(0xff2F80ED), width: 2.0)),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xff828282)),
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Password*'), Text('Forgot Password ?')],
                    ),
                    Material(
                      elevation: 2,
                      shadowColor: const Color(0xff2F80ED),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          controller: password,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isVisible,
                          decoration: InputDecoration(
                              suffixIcon: InkWell(
                                onTap: () {
                                  isVisible = !isVisible;
                                  setState(() {});
                                },
                                child: Icon(
                                  isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color(0xff000000),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: const BorderSide(
                                      color: Color(0xff2F80ED), width: 2.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xff828282)),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff2F80ED)),
                              onPressed: () {},
                              child: Text(
                                'SIGN UP',
                                style: GoogleFonts.cambo(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: 20),
                              )),
                        ),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff2F80ED)),
                              onPressed: () {
                                abc();
                              },
                              child: Text(
                                'Generate',
                                style: GoogleFonts.cambo(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: 20),
                              )),
                        ),
                      ],
                    ),
                    const Text('Terms and Conditions | Primacy Policy')
                  ],
                ),
              )
            ],
          ),
          Image.asset(
            'assets/images/bottom_banner.png',
            width: 755,
            height: 255,
          )
        ],
      ),
    ));
  }
}
