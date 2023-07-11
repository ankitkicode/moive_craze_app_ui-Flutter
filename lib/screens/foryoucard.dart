// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ForYouCad(image,text) {
    return AspectRatio(
      aspectRatio: 3.8 / 3,
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
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.8
              ], colors: [
                Colors.black87.withOpacity(.5),
                Colors.black.withOpacity(0.1)
              ])),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(text,style: GoogleFonts.bangers(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  color: Colors.white),),
                )),
        ),
      ),
    );
  }