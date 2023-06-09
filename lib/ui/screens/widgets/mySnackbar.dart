import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/constants.dart';

void showSnackbar(String title, String des , {SnackPosition? snackPosition}) {

  Get.snackbar(
      title,
      des,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      margin: EdgeInsets.all(10),
      backgroundColor: Colors.grey.withOpacity(.3),
      colorText: Colors.green.shade900,
      duration: Duration(seconds: 2),
    titleText: Text(title,style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold, fontSize: 17,color: Colors.green.shade900),),
    messageText: Text(des,style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500, fontSize: 15,color: Colors.green.shade900),),
  );
}