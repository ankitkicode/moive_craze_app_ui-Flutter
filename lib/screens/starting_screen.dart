// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moive_craze/screens/bestmovie.dart';
import 'package:moive_craze/screens/click.dart';
import 'package:moive_craze/screens/foryoucard.dart';
import 'populor.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
      body: Stack(
        children: [
          SafeArea(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top header  and Name
                Padding(
                  padding:
                      EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hi, Ankit Singh",
                        style: GoogleFonts.fjallaOne(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                    image: AssetImage("asset/two.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // Search bar design
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 27, 27, 27),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Find Your Movie",
                          hintStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.white.withOpacity(0.5),
                          )),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                // For You Secation...
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "For You",
                    style: GoogleFonts.pathwayGothicOne(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 300,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClickScreen()));
                          },
                          child: ForYouCad("asset/one.jpg", "Spider Man")),
                      InkWell(child: ForYouCad("asset/two.jpg", "Joker")),
                      InkWell(child: ForYouCad("asset/three.jpg", "War")),
                    ]),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Populor",
                              style: GoogleFonts.pathwayGothicOne(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.white)),
                          Text("See All",
                              style: GoogleFonts.pathwayGothicOne(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 200,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClickScreen()));
                          },
                          child: PopulorScreen("asset/four.jpg", "Border")),
                      InkWell(
                          child:
                              PopulorScreen("asset/five.jpg", "Black Money")),
                      InkWell(child: PopulorScreen("asset/six.jpg", "Joker 2")),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Best Movies",
                              style: GoogleFonts.pathwayGothicOne(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.white)),
                          Text("See All",
                              style: GoogleFonts.pathwayGothicOne(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 150,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClickScreen()));
                          },
                          child: BestMovieScreen("asset/four.jpg", "Border")),
                      InkWell(
                          child:
                              BestMovieScreen("asset/five.jpg", "Black Money")),
                      InkWell(
                          child: BestMovieScreen("asset/six.jpg", "Joker 2")),
                    ]),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(88, 100, 99, 99)),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              IconButton(
                  highlightColor: Color.fromARGB(255, 116, 94, 238),
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Color.fromARGB(179, 255, 255, 255),
                  )),
              IconButton(
                  highlightColor: Color.fromARGB(255, 116, 94, 238),
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_collection_outlined,
                    size: 30,
                    color: Color.fromARGB(179, 255, 255, 255),
                  )),
              IconButton(
                  highlightColor: Color.fromARGB(255, 116, 94, 238),
                  onPressed: () {},
                  icon: Icon(
                    Icons.slow_motion_video,
                    size: 30,
                    color: Color.fromARGB(179, 255, 255, 255),
                  )),
              IconButton(
                  highlightColor: Color.fromARGB(255, 116, 94, 238),
                  // focusColor: Color.fromARGB(255, 109, 255, 64),
                  // splashColor: Colors.amber,
                  // mouseCursor: MouseCursor.defer,
                  // hoverColor: Colors.red,
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_sharp,
                    size: 30,
                    color: Color.fromARGB(179, 255, 255, 255),
                  )),
              IconButton(
                 highlightColor: Color.fromARGB(255, 116, 94, 238),
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_sharp,
                    size: 30,
                    color: Color.fromARGB(179, 255, 255, 255),
                  ))
            ]),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      extendBody: true,
    );
  }
}
