import 'package:flutkart/utils/my_navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyApp extends StatefulWidget {
  LatLng cameraPosition;
  MyApp(this.cameraPosition);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleMapController mapController;

  LatLng mapPosition = LatLng(28.370860, 36.556152);
  LatLng positionOne = LatLng(28.424440, 36.527753);
  LatLng positionTwo = LatLng(28.424401, 36.528278);
  LatLng positionThree = LatLng(28.413344, 36.575146);
  LatLng positionFour = LatLng(28.397561, 36.588021);
  LatLng positionFive = LatLng(28.364158, 36.556960);
  LatLng positionSix = LatLng(28.380462, 36.549685);
  LatLng positionSeven = LatLng(28.406969, 36.520779);
  LatLng positionEight = LatLng(28.404488, 36.563177);
  LatLng positionNine = LatLng(28.389617, 36.574465);

  final Set<Marker> _markers = {};


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onCameraMove(CameraPosition position) {
    mapPosition = position.target;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mapPosition = widget.cameraPosition;

    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(mapPosition.toString()),
      position: mapPosition,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'Al Khalidia Medical Center',
        snippet: 'نسبة الأنشغال 20% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));

    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionOne.toString()),
      position: positionOne,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'الرعاية الصحية بتبوك',
        snippet: 'نسبة الأنشغال 50% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));

    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionTwo.toString()),
      position: positionTwo,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي الراجحي',
        snippet: 'نسبة الأنشغال 70% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionThree.toString()),
      position: positionThree,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي الورود',
        snippet: 'نسبة الأنشغال 80% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionFour.toString()),
      position: positionFour,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي المثلث',
        snippet: 'نسبة الأنشغال 30% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,
        onTap: (){

        }
    ));
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionFive.toString()),
      position: positionFive,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي المنتزة',
        snippet: 'نسبة الأنشغال 45% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionSix.toString()),
      position: positionSix,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي الرويعيات',
        snippet: 'نسبة الأنشغال 99% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionSeven.toString()),
      position: positionSeven,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي الروضة',
        snippet: 'نسبة الأنشغال 68% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionEight.toString()),
      position: positionEight,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي المهرجان',
        snippet: 'نسبة الأنشغال 59% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(positionNine.toString()),
      position: positionNine,
      infoWindow: InfoWindow(
        onTap: (){
          MyNavigator.goToForm(context);
          print("kritesh123");
        },
        title: 'مركز صحي الفيصلية ج',
        snippet: 'نسبة الأنشغال 100% اضغط للحجز',
      ),
      icon: BitmapDescriptor.defaultMarker,

    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps'),
          backgroundColor: Colors.green[700],
          leading: FlatButton(
            child: Icon(
              Icons.arrow_back
            ),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: mapPosition,
            zoom: 19.0,
          ),
          markers: _markers,
          onCameraMove: _onCameraMove,
          onTap: _handleTap,
        ),
      ),
    );
  }

  _handleTap(LatLng point) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(point.toString()),
        position: point,
        infoWindow: InfoWindow(
          title: 'I am a marker',
        ),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
        onTap: (){

        }
      ));
    });
  }
}