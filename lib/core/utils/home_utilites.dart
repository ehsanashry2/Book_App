import 'dart:math';

import 'package:geolocator/geolocator.dart';

bool checkFromArray(dynamic myArray) {
  if (myArray != null && myArray is List && myArray.isNotEmpty) {
    return true;
  } else {
    return false;
  }
}

bool checkFromMap(dynamic myMap) {
  if (myMap != null &&
      (myMap is Map || myMap is Map<String, dynamic>) &&
      myMap.isNotEmpty) {
    return true;
  } else {
    return false;
  }
}

String formatBytes(int bytes) {
  if (bytes <= 0) return "0 B";
  const units = ['B', 'KB', 'MB', 'GB', 'TB'];
  int i = (log(bytes) / log(1024)).floor();
  return '${(bytes / pow(1024, i)).toStringAsFixed(2)} ${units[i]}';
}

String getSuitableNameLanguageForScreen(final dynamic textLanguages) {
  if (textLanguages == null) return "field is null";

  if (textLanguages is List) {
    return textLanguages[0] ?? "field is null";
  }

  if (textLanguages is Map<String, dynamic>) {
    return textLanguages['en'] is List
        ? textLanguages['en'][0]
        : textLanguages['en'].toString();
  } else {
    return textLanguages.toString();
  }
}

Future<Position?> getCurrentPosition() async {
  // Check if location services are enabled
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled, return an error or request to enable it
    return null;
    // throw Exception('Location services are disabled.');
  }

  // Check location permission
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    // Request permission if it hasn't been granted
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return null;
      // Permissions are denied, return an error or handle it accordingly
      // throw Exception('Location permissions are denied.');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return null;
    // Permissions are denied forever, return an error or prompt user to enable it
    // throw Exception(
    //     'Location permissions are permanently denied, we cannot request permissions.');
  }

  // If all permissions are granted, get the current position
  Position position = await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );

  return position;
}
