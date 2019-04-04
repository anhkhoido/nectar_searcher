import 'dart:core';

class Establishment {
  final String name;
  final String address;
  final String city;
  final String province;
  final String postalCode;
  final String intersection;
  final String subwayStation;
  final double latitude;
  final double longitude;
  final String sunday;
  final String monday;
  final String tuesday;
  final String wednesday;
  final String thursday;
  final String friday;
  final String saturday;

  Establishment({this.name,
                this.address,
                this.city,
                this.province,
                this.postalCode,
                this.intersection,
                this.subwayStation,
                this.latitude,
                this.longitude,
                this.sunday,
                this.monday,
                this.tuesday,
                this.wednesday,
                this.thursday,
                this.friday,
                this.saturday});


  @override
  String toString() {
    return '{Establishment: name = ${name}, address = ${address}, city = ${city}}';
  }

  factory Establishment.fromJson(Map<String, dynamic> json) {
    return Establishment(name: json["name"],
                        address: json['address'],
                        city: json['city'],
                        province: json['province'],
                        postalCode: json['postal_code'],
                        intersection: json['intersection'],
                        subwayStation: json['subway_station'],
                        latitude: double.parse(json['latitude']),
                        longitude: double.parse(json['longitude']),
                        sunday: json['sunday'],
                        monday: json['monday'],
                        tuesday: json['tuesday'],
                        wednesday: json['wednesday'],
                        thursday: json['thursday'],
                        friday: json['friday'],
                        saturday: json['saturday']);
  }
}