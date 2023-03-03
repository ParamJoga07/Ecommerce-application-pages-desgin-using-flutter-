import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List icons = [
      CupertinoIcons.device_phone_portrait,
      CupertinoIcons.device_laptop,
      CupertinoIcons.device_desktop,
      CupertinoIcons.game_controller_solid,
      CupertinoIcons.tv,
      CupertinoIcons.airplane,
      CupertinoIcons.car_detailed,
      CupertinoIcons.macwindow,
    ];
    final List categories = ['New', 'Most Viewed', 'Trending🔥', 'All'];
    final List imageurls = [
      'assets/1.jpg',
      'assets/2.jpg',
      'assets/3.jpg',
      'assets/4.jpg',
      'assets/1.png',
      'assets/2.png',
      'assets/3.png',
      'assets/4.png'
    ];
    final List names = [
      'ABC',
      'DEF',
      'TODC',
      'AVDC',
      'ABC',
      'DEF',
      'TODC',
      'AVDC'
    ];
    final List location = [
      'XYZ',
      'JHDCJ',
      'DCHG',
      'ECFW',
      'XYZ',
      'JHDCJ',
      'DCHG',
      'ECFW'
    ];
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                      image: AssetImage("assets/avatar.png"),
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.dehaze_rounded,
                    size: 40,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "The best technologies are those that are transparent, intimate, and intuitive.",
              style: GoogleFonts.adamina(
                textStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 67,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF9E9E9E),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xfF757575),
                    offset: Offset(0.0, 4.0),
                    blurRadius: 6.0,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Something !',
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.adamina(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 255, 251, 251)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 38),
                  height: 60,
                  width: 51,
                  decoration: BoxDecoration(
                      color: Color(0xFF424242),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Icon(
                      Icons.search_rounded,
                      color: Color(0xFF9E9E9E),
                      size: 35,
                    ),
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF9E9E9E),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: icons.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xFF424242).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        icons[index],
                        size: 45,
                        color: Color(0xff212121),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF9E9E9E),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Text(
                      categories[index],
                      style: GoogleFonts.adamina(
                        textStyle: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              child: Container(
                  color: Color(0xFF9E9E9E),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Color(0xFF424242).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(imageurls[index]),
                                    fit: BoxFit.cover)),
                            child: Stack(
                              children: <Widget>[
                                Container(),
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Text(
                                      names[index],
                                      style: GoogleFonts.adamina(
                                        textStyle: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    )),
                                Positioned(
                                    child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.insert_link_outlined,
                                      color: Color(0xFF424242),
                                    ),
                                    Text(
                                      location[index],
                                      style: GoogleFonts.adamina(
                                        textStyle: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        );
                      })))
        ],
      ),
    ));
  }
}
