import 'package:equatable/equatable.dart';

class DirectGeocoding extends Equatable {
  final String name;
  final double lat;
  final double lon;
  final String country;
  final String localName;
  DirectGeocoding({
    required this.name,
    required this.lat,
    required this.lon,
    required this.country,
    required this.localName,
  });

  factory DirectGeocoding.fromJson(List<dynamic> json) {
    final Map<String, dynamic> data = json[0];
    final Map<String, dynamic> localNames = data['local_names'];
    print("Hello $data");

    return DirectGeocoding(
      name: data['name'],
      lat: data['lat'],
      localName: localNames['ko'],
      lon: data['lon'],
      country: data['country'],
    );
  }

  @override
  List<Object> get props => [name, lat, lon, country];

  @override
  String toString() {
    return 'DirectGeocoding(name: $name, lat: $lat, lon: $lon, country: $country, localName: $localName)';
  }
}
