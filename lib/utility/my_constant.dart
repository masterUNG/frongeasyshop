import 'package:flutter/material.dart';

class MyConstant {
  //field
  static String routAuthen = '/authen';
  static String routCreateAccount = '/createaccount';
  static String routServiceBuyer = '/servicebuyer';
  static String routServiceShopper = '/serviceshopper';

  static Color primart = const Color(0xffa08a59);
  static Color dark = const Color(0xff705d2f);
  static Color light = const Color(0xffd2ba86);

//metthod

  BoxDecoration simplebox() => BoxDecoration(
        color: light,
      );
  BoxDecoration gradianBox() => BoxDecoration(
        gradient: RadialGradient(radius: 1.0,
          colors: [Colors.white, light],
        ),
      );

  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
        primary: MyConstant.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );

  TextStyle h1Style() => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold, //ตัวหนา
        color: dark,
      );
  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700, //หัวข้อ
        color: dark,
      );
  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal, //ตัวปกติ
        color: dark,
      );
}
