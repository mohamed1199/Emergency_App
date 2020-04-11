import 'dart:convert';

Medical clientFromJson(String str) {
  final jsonData = json.decode(str);
  return Medical.fromMap(jsonData);
}

String clientToJson(Medical data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

class Medical {
  int id;
  String full_name;
  String id_number;
  String phone_number;
  String dateofbirth;
  String chronic;
  String address;
  String social;
  String gender;
  String job_location;

  Medical({
    this.id,
    this.full_name,
    this.id_number,
    this.phone_number,
    this.dateofbirth,
    this.chronic,
    this.address,
    this.social,
    this.gender,
    this.job_location,
  });

  factory Medical.fromMap(Map<String, dynamic> json) => new Medical(
    id: json["id"],
    full_name: json["full_name"],
    id_number: json["id_number"],
    phone_number: json["phone_number"],
    dateofbirth: json["dateofbirth"],
    chronic: json["chronic"],
    address: json["address"],
    social: json["social"],
    gender: json["gender"],
    job_location: json["job_location"],
  );

  Map<String, dynamic> toMap() => {
    "full_name": full_name,
    "id_number": id_number,
    "phone_number": phone_number,
    "dateofbirth": dateofbirth,
    "chronic": chronic,
    "address": address,
    "social": social,
    "gender": gender,
    "job_location": job_location,
  };
}