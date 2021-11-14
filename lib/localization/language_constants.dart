import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LAGUAGE_CODE = 'languageCode';

// Languages code
const String ENGLISH = 'en';
const String FARSI = 'fa';
const String JAPANESE = 'ja';
const String ZH_TAIWAN = 'zh-TW';
const String ZH_CHINA = 'zh-CN';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return Locale(ENGLISH, 'US');
    case FARSI:
      return Locale(FARSI, "IR");
    case JAPANESE:
      return Locale(JAPANESE);
    case ZH_CHINA:
      return Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN');
    case ZH_TAIWAN:
      return Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW');
    default:
      return Locale(ENGLISH);
  }
}
