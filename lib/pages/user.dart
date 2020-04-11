import 'package:google_maps_flutter/google_maps_flutter.dart';

class User {
  String firstName;
  String lastName;
  LatLng position;

  User({this.firstName, this.lastName, this.position});

  static List<User> getUsers() {
    return <User>[
//      User(firstName: "مستوصف فيصل", lastName: ""),
//      User(firstName: "مستوصف رحاب الحنان", lastName: ""),
//      User(firstName: "مستوصف ابتسامة الصحة", lastName: ""),
//      User(firstName: "مستوصف الثبيتي", lastName: ""),
//      User(firstName: "مستوصف مباسم", lastName: ""),

      User(firstName: "Al Khalidia Medical Center", lastName: "", position: LatLng(28.370860, 36.556152),),
      User(firstName: "الرعاية الصحية بتبوك", lastName: "", position: LatLng(28.424440, 36.527753)),
      User(firstName: "مركز صحي الراجحي", lastName: "", position: LatLng(28.424401, 36.528278)),
      User(firstName: "مركز صحي الورود", lastName: "", position: LatLng(28.413344, 36.575146)),
      User(firstName: "مركز صحي المثلث", lastName: "", position: LatLng(28.397561, 36.588021)),

      User(firstName: "مركز صحي المنتزة", lastName: "", position: LatLng(28.364158, 36.556960)),
      User(firstName: "مركز صحي الرويعيات", lastName: "", position: LatLng(28.380462, 36.549685)),
      User(firstName: "مركز صحي الروضة", lastName: "", position: LatLng(28.406969, 36.520779)),
      User(firstName: "مركز صحي المهرجان", lastName: "", position: LatLng(28.404488, 36.563177)),
      User(firstName: "مركز صحي الفيصلية ج", lastName: "", position: LatLng(28.389617, 36.574465)),
    ];
  }
}