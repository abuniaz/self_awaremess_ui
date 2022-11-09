import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_screen_2.dart';
import 'RoomPage.dart';

class PrivacyWrong1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              elevation: 2.0,
              backgroundColor: const Color(0xff392850),
              title: const Text('Retry Room',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0)),
            )),
        body: Container(
            decoration: const BoxDecoration(color: Color(0xff392850)),
            child: Column(children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/alert.png"),
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Container(
                child: Text(
                  'Caution!',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                  )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Text(
                  "You should not give senstitive information to unknown third parties!\n"
                  "\nThis information can be used to track you.\n",
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Text(
                  "Learn More",
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                    color: Colors.cyan,
                    fontSize: 18,
                  )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const RoomPage()));
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => PrivacyScreen2()));
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
                  )
                ],
              )
            ])));
  }
}
