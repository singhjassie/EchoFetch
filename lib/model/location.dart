import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class Location {
  Location({
    required this.houseNo,
    required this.city,
    required this.state,
    required this.country,
    required this.pinCode,
  }): id = uuid.v4();
  final String id;
  final int houseNo;
  final String city;
  final String state;
  final String country;
  final int pinCode;
}
