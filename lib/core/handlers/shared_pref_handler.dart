import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:innove_final_project/core/constants/enums/shared_value_type_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHandler {
  static SharedPrefHandler? instance;
  late final SharedPreferences _sharedPreferences;
  SharedPrefHandler._internal();
  static init() async {
    if (instance == null) {
      instance = SharedPrefHandler._internal();
      instance!._sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  Future<void> setData(String key,  {dynamic value}) async {
    if (value is String) {
      _sharedPreferences.setString(key, value);
    } else if (value is bool) {
      _sharedPreferences.setBool(key, value);
    } else if (value is int) {
      _sharedPreferences.setInt(key, value);
    } else if (value is double) {
      _sharedPreferences.setDouble(key, value);
    } else if (value is Map) {
      String json = jsonEncode(value);
      _sharedPreferences.setString(key, json);
    } else {
      throw TypeError();
    }
  }

  dynamic getData({required String key, required SharedValueType valueType}) {
    switch (valueType) {
      case SharedValueType.string:
        return _sharedPreferences.getString(key) ?? "";
      case SharedValueType.int:
        return _sharedPreferences.getInt(key) ?? 0;
      case SharedValueType.double:
        return _sharedPreferences.getDouble(key) ?? 0.0;
      case SharedValueType.bool:
        return _sharedPreferences.getBool(key) ?? false;
      case SharedValueType.map:
        String? value = _sharedPreferences.getString(key);
        Map<String, dynamic> data = value != null ? jsonDecode(value) : {};
        return data;
      default:
        return "";
    }
  }

  void remove({required List<String> keys}) async {
    for (String key in keys) {
      await _sharedPreferences.remove(key);
    }
  }

  clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    await _sharedPreferences.clear();
  }
}
