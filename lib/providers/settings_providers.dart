import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
String currentLocale ="en" ;



void setCurrentLocale(String newLocale){
currentLocale = newLocale;
notifyListeners();

}


}