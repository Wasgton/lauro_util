import 'package:flutter/material.dart';
import 'package:lauro_util/pages/home/home.dart';
import 'package:lauro_util/pages/secretaries/secretaries.dart';
import 'package:lauro_util/pages/services/services.dart';

void main() {
  runApp(
      MaterialApp(
          initialRoute: '/',
          routes: {
            "/services" : (context)=>Services(),
            "/secretaries" : (context)=>Secretaries()
          },
          debugShowCheckedModeBanner: false,
          home:Home()
      )
  );
}
