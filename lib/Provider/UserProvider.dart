import 'package:flutter/material.dart';

class UserProvider1 extends ChangeNotifier{
  List<double> MyData;

  UserProvider1() : MyData = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

  void ChangeData({
    required double NewData,
    required int Index,
  }) async {
    MyData[Index] = NewData;
    notifyListeners();
  }

}

class UserProvider2 extends ChangeNotifier{
  List<double> MyData;

  UserProvider2() : MyData = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

  void ChangeData({
    required double NewData,
    required int Index,
  }) async {
    MyData[Index] = NewData;
    notifyListeners();
  }

}

class UserProvider3 extends ChangeNotifier{
  List<double> MyData;

  UserProvider3() : MyData = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

  void ChangeData({
    required double NewData,
    required int Index,
  }) async {
    MyData[Index] = NewData;
    notifyListeners();
  }

}

class UserProvider4 extends ChangeNotifier{
  List<double> MyData;

  UserProvider4() : MyData = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

  void ChangeData({
    required double NewData,
    required int Index,
  }) async {
    MyData[Index] = NewData;
    notifyListeners();
  }

}

class UserProvider5 extends ChangeNotifier{
  List<double> MyData;

  UserProvider5() : MyData = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

  void ChangeData({
    required double NewData,
    required int Index,
  }) async {
    MyData[Index] = NewData;
    notifyListeners();
  }

}