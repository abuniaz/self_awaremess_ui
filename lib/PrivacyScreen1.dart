import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_screen_2.dart';

class PrivacyScreen1 extends StatelessWidget {
  PrivacyScreen1({Key? key}) : super(key: key);
  String scenario =
      "You have been scrolling through your social media feed and "
      "suddenly you see a friend sharing their stats on which Marvel superhero they are. \n"
      "\nYou feel intrigued. So you click on the post!";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            elevation: 2.0,
            backgroundColor: const Color(0xff392850),
            title: const Text('Exit Room',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0)),
          )),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff392850),
        ),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
              child: Text(
                scenario,
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Container(
                padding: const EdgeInsets.all(10.0),
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/priv-1.jpg"),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => PrivacyScreen2()));
                },
                child: Text(
                  'Continue',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
