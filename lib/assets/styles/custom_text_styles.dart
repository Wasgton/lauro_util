import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class CustomTextStyles{

  static TextStyle titleH1 = GoogleFonts.roboto(
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle titleMontSerratH1 = GoogleFonts.montserrat(
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle titleH2 = GoogleFonts.roboto(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textFieldLabel = GoogleFonts.roboto(
    color: AppColors.black,
    fontSize: 12,
    fontWeight: FontWeight.normal
  );

}
