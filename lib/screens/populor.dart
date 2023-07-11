// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

  
Widget PopulorScreen(image,text) {
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        // padding: EdgeInsets.symmetric( horizontal: 10),
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(172, 23, 121, 187).withOpacity(.1),
                
              )
            ],
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.8
              ], colors: [
                Colors.black87.withOpacity(.2),
                Colors.black.withOpacity(0.1)
              ])),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(text,style: GoogleFonts.bangers(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  color: Colors.white),),
                )),
        ),
      ),
    );
  }