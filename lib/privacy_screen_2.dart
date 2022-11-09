import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PrivacyWrong1.dart';
import 'PrivacyCorrect1.dart';

class PrivacyScreen2 extends StatelessWidget {
  String scenario =
      "However you see the website is asking access to sensitive information"
      "Things like your photos, chats etc. which are very private to you.\n"
      "\nWhat do you do in this situation?";

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
                    image: AssetImage("assets/priv-2.png"),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
          ],
        ),
      ),
    );
  }
}
