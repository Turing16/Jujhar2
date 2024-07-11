
import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  String name;
  String phone;
  String email;
  String gender;
  String addressLine;
  String sports;
  String city;
  String state;
  String country;
  String role;
  String highestPlayedLevel;
  GeoPoint location;
  DateTime dateOfBirth;
  int age;
  bool representClub;
  String clubName;
  String schoolCollegeOrgName;
  String imageURL;
  DateTime createdOn;

  AppUser({
    required this.name,
    required this.phone,
    required this.email,
    required this.gender,
    required this.addressLine,
    required this.sports,
    required this.city,
    required this.state,
    required this.country,
    required this.role,
    required this.highestPlayedLevel,
    required this.location,
    required this.dateOfBirth,
    required this.age,
    required this.representClub,
    required this.clubName,
    required this.schoolCollegeOrgName,
    required this.imageURL,
    required this.createdOn
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone': phone,
      'email': email,
      'gender': gender,
      'addressLine': addressLine,
      'sports': sports,
      'city': city,
      'state': state,
      'country': country,
      'role': role,
      'highestPlayedLevel': highestPlayedLevel,
      'location': location,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'age': age,
      'representClub': representClub,
      'clubName': clubName,
      'schoolCollegeOrgName': schoolCollegeOrgName,
      'imageURL': imageURL,
      'createdOn': createdOn.toIso8601String(),
    };
  }

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      email: map['email'] ?? '',
      gender: map['gender'] ?? '',
      addressLine: map['addressLine'] ?? '',
      sports: map['sports'] ?? '',
      city: map['city'] ?? '',
      state: map['state'] ?? '',
      country: map['country'] ?? '',
      role: map['role'] ?? '',
      highestPlayedLevel: map['highestPlayedLevel'] ?? '',
      location: map['location'],
      dateOfBirth: DateTime.parse(map['dateOfBirth']),
      age: map['age'] ?? 0,
      representClub: map['representClub'] ?? false,
      clubName: map['clubName'] ?? '',
      schoolCollegeOrgName: map['schoolCollegeOrgName'] ?? '',
      imageURL: map['imageURL'] ?? '',
      createdOn: DateTime.parse(map['createdOn']),
    );
  }

  static AppUser getEmptyAppUser(){
    return AppUser(
      name: "", 
      phone: "", 
      email: "", 
      gender: "",
      addressLine: "", 
      sports: "Select Sport", 
      city: "", 
      state: "", 
      country: "", 
      role: "", 
      highestPlayedLevel: "",
      location: GeoPoint(0,0), 
      dateOfBirth: DateTime.now(), 
      age: 0, 
      representClub: false, 
      clubName: "", 
      schoolCollegeOrgName: "", 
      imageURL: "",
      createdOn: DateTime.now()
      );
  }
}