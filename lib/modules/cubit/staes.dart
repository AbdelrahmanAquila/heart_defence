import 'package:dio/dio.dart';

abstract class AppStates {}

class AppInitalState extends AppStates {}

class AppMaleState extends AppStates {
  final bool isMale;
  final int genderValue;

  AppMaleState(this.isMale, this.genderValue);
}

class AppFemaleState extends AppStates {
  final bool isMale;
  final int genderValue;

  AppFemaleState(this.isMale, this.genderValue);
}

class ChangeSliderState extends AppStates {
  final double chestPainType;
  final double slopeType;
  final double coloredVessles;
  final double restBP;
  final double chol;
  final double rc;
  final double maxHrate;

  ChangeSliderState(this.chestPainType, this.slopeType, this.coloredVessles,
      this.restBP, this.chol, this.rc, this.maxHrate);
}

class ExangSelectState extends AppStates {}

class FbsSelectState extends AppStates {}

class ResponseState extends AppStates {
  final Response response;

  ResponseState(
    this.response,
  );
}
