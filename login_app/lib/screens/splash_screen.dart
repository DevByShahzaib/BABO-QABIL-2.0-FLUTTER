import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/top_banner.png',
            width: 1200,
            height: 225,
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Positioned(
                left: 40,
                child: Text(
                  'ANGEL SURE',
                  style: GoogleFonts.akayaTelivigala(
                      fontSize: 30, color: Color(0xff2F80ED)),
                ),
              ),
              Positioned(
                child: Image.asset(
                  'assets/images/Image.png',
                  width: 239,
                  height: 298,
                  // color: Colors.blue,
                ),
              )
            ],
          ),
          Stack(
            children: [
              Image.asset(
                'assets/images/bottom_banner.png',
                width: 755,
                height: 255,
              ),
              Positioned(
                left: 320,
                top: 170,
                child: FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 239, 239, 226),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Icon(
                    Icons.navigate_next_rounded,
                    color: Color(0xff2F80ED),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
