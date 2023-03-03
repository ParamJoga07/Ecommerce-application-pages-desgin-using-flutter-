import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  final Color mainColor = Color(0xFF90A4AE);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Image(
          image: AssetImage("assets/bg.gif"),
          fit: BoxFit.cover,
          color: Colors.black54,
          colorBlendMode: BlendMode.darken,
        ),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(70.0),
            ),
            Image(
              image: AssetImage("assets/logo.png"),
            ),
            Container(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter Email Id",
                      hintStyle: GoogleFonts.amiri(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white60),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: GoogleFonts.amiri(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  Padding(padding: const EdgeInsets.only(top: 20.0)),
                ],
              ),
            ),
            Container(
              child: Text(
                "Technology is best when it brings people together",
                style: GoogleFonts.amiri(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
            ),
            Positioned(
                bottom: 100,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFF90A4AE)),
                      child: Center(
                        child: Text("Sign In",
                            style: GoogleFonts.amiri(
                              textStyle: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal),
                            )),
                      ),
                    ))),
          ],
        )
      ]),
    );
  }
}
