import 'package:buscador_gifs/ui/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: const HomePage(),
    debugShowCheckedModeBanner: true,
    theme: ThemeData(
        hintColor: Colors.white,
        primaryColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          hintStyle: TextStyle(color: Colors.white),
          labelStyle: TextStyle(color: Colors.white),
        )),
  ));
}