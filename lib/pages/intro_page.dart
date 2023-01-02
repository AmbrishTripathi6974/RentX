import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 110),
            child: Image.asset('lib/images/house.png'),
          ),

          // we deliver property details at your doorstep
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Text(
              'We provide property details at your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 24),

          // New properties everyday
          Text(' New properties everyday! ',
          style: TextStyle(color: Colors.grey[600]),
          ),

          const Spacer(),

          // get start button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const MainPage();
            },
            )),

          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(24),
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          ),
      ),
          const Spacer(),

        ],
      ),
    );
  }
}
