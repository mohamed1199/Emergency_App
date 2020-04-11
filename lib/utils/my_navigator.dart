
import 'package:flutkart/pages/MedicalForm.dart';
import 'package:flutkart/pages/map.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/Home");
  }

  static void goToMap(BuildContext context, LatLng position) {
    //Navigator.pushNamed(context, "/map");
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp(position)));
  }

  static void goToForm(BuildContext context) {
    //Navigator.pushNamed(context, "/map");
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Medicalform()));
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }
}
