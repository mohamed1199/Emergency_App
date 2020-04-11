import 'package:flutkart/utils/Database.dart';
import 'package:flutkart/utils/Medical.dart';
import 'package:flutkart/utils/my_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Medicalform extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _Medicalform();

}
enum Gender { MALE, FEMALE, OTHER }

class _Medicalform extends State<Medicalform> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  TextStyle textstyle = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.red);
  Gender _genderValue = Gender.MALE;
  bool ispresse = false;
  int i=1;

  final fullnameController = TextEditingController();
  final idnoController = TextEditingController();
  final phoneController = TextEditingController();
  final dateController = TextEditingController();
  final chronicController = TextEditingController();
  final addressController = TextEditingController();
  final socialController = TextEditingController();
  final jobController = TextEditingController();

  void _showDialog(String S) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(S=="e" ? "خطأ" : "تم"),
          content: new Text(S=="e" ? "الرجاء إدخال الحقول المطلوبة": "تم التسجيل بنجاح"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("موافق"),
              onPressed: () {
                S=="S" ? MyNavigator.goToHome(context) : Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    final Label = Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
      padding: EdgeInsets.all(15.0),
      child: Text(
        "نموذج الحجز في المركز الصحي",
        style: textstyle,
      ),
    );


    // full names
    final fullnamefield = TextField(
      textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "الاسم الكامل  *",
          errorText: ispresse ? isValide(dateController)? null : "الاسم الكامل مطلوب": null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: fullnameController,
      );

    // id number
    final idnofield = TextField(
      textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "رقم الهوية *",
          errorText: ispresse ? isValide(dateController)? null : "رقم الهوية مطلوب": null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),focusColor: Colors.red),
      controller: idnoController,
    );

    final phonenofield = TextField(
        textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "رقم الهاتف *",
          errorText: ispresse ? isValide(dateController)? null : "رقم الهاتف مطلوب": null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),focusColor: Colors.red),
        controller:phoneController
    );

    final datefield = TextField(
        textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "تاريخ الميلاد *",
          errorText: ispresse ? isValide(dateController)? null : "تاريخ الميلاد مطلوب": null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),focusColor: Colors.red),
        controller:dateController
    );

    final chronicdiseasesfield = TextField(
      textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "الامراض المزمنة *",
          errorText: ispresse ? isValide(chronicController)? null : "الامراض المزمنة مطلوبة": null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),focusColor: Colors.red),
        controller:chronicController
    );

    final addressfield = TextField(
        textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "العنوان *",
          errorText: ispresse ? isValide(addressController)? null : "العنوان مطلوب": null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),focusColor: Colors.red),
        controller:addressController
    );

    final Socialstatusfield = TextField(
        textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "الحالة الاجتماعية",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),focusColor: Colors.red),
        controller:socialController
    );

    final joblocationfield = TextField(
        textAlign: TextAlign.right,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "العنوان الوظيفي",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),focusColor: Colors.red),
        controller:jobController
    );

    final malefemale = Row(
      children: <Widget>[
        FlatButton.icon(
          label: const Text('ذكر'),
          icon: Radio(
            value: Gender.MALE,
            groupValue: _genderValue,
            onChanged: (Gender value) {
              setState(() {
                _genderValue = value;
              });
            },
          ),
          onPressed: () {
            setState(() {
              _genderValue = Gender.MALE;
            });
          },
        ),
        FlatButton.icon(
          label: const Text('أنثي'),
          icon: Radio(
            value: Gender.FEMALE,
            groupValue: _genderValue,
            onChanged: (Gender value) {
              setState(() {
                _genderValue = value;
              });
            },
          ),
          onPressed: () {
            setState(() {
              _genderValue = Gender.FEMALE;
            });
          },
        ),
      ],
    );

    final button =   new RaisedButton(
      onPressed: (){
      setState(() {
        ispresse = true;
      });
        if(isValideall()) {
          Medical medical = new Medical(full_name: fullnameController.text,
              id_number: idnoController.text,
              phone_number: phoneController.text,
              dateofbirth: dateController.text,
              chronic: chronicController.text,
              address: addressController.text,
              social: socialController.text,
              gender: _genderValue.toString(),
              job_location: jobController.text);
              DBProvider.db.insertt(medical);
//          print(DBProvider.db.getClient(2));
          _showDialog("S");
        }else{
          _showDialog("e");
        }

      },
      textColor: Colors.white,
      color: Colors.red,
      padding: const EdgeInsets.all(12.0),
      child: new Text(
        "تأكيد الحجز",
      ),
    );

    return MaterialApp(
      title: "نموذج الحجز",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('الحجز'),
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
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Label,
                    fullnamefield,
                    SizedBox(height: 20.0,),
                    idnofield,
                    SizedBox(height: 20.0,),
                    phonenofield,
                    SizedBox(height: 20.0,),
                    datefield,
                    SizedBox(height: 20.0,),
                    chronicdiseasesfield,
                    SizedBox(height: 20.0,),
                    addressfield,
                    SizedBox(height: 20.0,),
                    Socialstatusfield,
                    SizedBox(height: 20.0,),
                    joblocationfield,
                    malefemale,
                    button
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isValide(TextEditingController jobController) {
    if(jobController.text.isNotEmpty){
      return true;
    }else{
      return false;
    }
  }

  bool isValideall() {
    if(fullnameController.text.isNotEmpty){
      if(idnoController.text.isNotEmpty){
        if(phoneController.text.isNotEmpty){
          if(dateController.text.isNotEmpty){
            if(chronicController.text.isNotEmpty){
              if(addressController.text.isNotEmpty){
                return true;
              }else{
                return false;
              }
            }else{
              return false;
            }
          }else{
            return false;
          }
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else{
      return false;
    }
  }
}

