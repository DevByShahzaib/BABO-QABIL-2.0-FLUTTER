import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        onPressed: () {},
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(color: Color(0xff2F80ED)),
                        )),
                  )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Sign In To Continue',
                style: GoogleFonts.roboto(fontSize: 24),
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
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                      left: 200,
                      child: Text(
                        'OR',
                        style: GoogleFonts.akayaTelivigala(fontSize: 15),
                      )),
                  const Positioned(
                    // left: 300,
                    child: Divider(
                      thickness: 1,
                      indent: 250,
                      color: Colors.black,
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
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.visibility_off,
                                color: Color(0xff828282),
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
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffFFFFFF)),
                          onPressed: () {},
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(color: Color(0xff2F80ED)),
                          )),
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
