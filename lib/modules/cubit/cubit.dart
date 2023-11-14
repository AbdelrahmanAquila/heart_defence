import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_defence/modules/cubit/staes.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitalState());

  static AppCubit get(context) => BlocProvider.of(context);

  // declare vars
  TextEditingController? ageController = TextEditingController();
  //Gender and Age
  bool nenene = true;
  bool isMale = true;
  int genderValue = 1;
  int age = 0;
  // Sliders
  double chestPainType = 0;
  double slopeType = 0;
  double coloredVessles = 0;
  double thalValue = 0;

  double restBP = 80;
  double chol = 100;
  // double fbs = 100;
  double rc = 0;
  double maxHrate = 100;

  //radio vals
  int exangValue = 0;
  int fbsValue = 0;

  //// late dynamic predict;
//result
  String predict = '';

  void toggleMale() {
    isMale = true;
    genderValue = 1;

    print(isMale);
    print(genderValue);
    print(ageController?.text);
    // print('$age');
    emit(AppMaleState(isMale, genderValue));
  }

  void toggleFemale() {
    isMale = false;
    genderValue = 0;

    print(isMale);
    print(genderValue);
    print(ageController?.text);
    // print('$age');
    emit(AppFemaleState(isMale, genderValue));
  }

  void chestPainSlider(value) {
    chestPainType = value;
    emit(ChangeSliderState(
        chestPainType, slopeType, coloredVessles, restBP, chol, rc, maxHrate));
  }

  void slopeSlider(value) {
    slopeType = value;
    emit(ChangeSliderState(
        chestPainType, slopeType, coloredVessles, restBP, chol, rc, maxHrate));
  }

  void vessleSlider(value) {
    coloredVessles = value;
    emit(ChangeSliderState(
        chestPainType, slopeType, coloredVessles, restBP, chol, rc, maxHrate));
  }

  void bpSlider(value) {
    restBP = value;
    emit(ChangeSliderState(
        chestPainType, slopeType, coloredVessles, restBP, chol, rc, maxHrate));
  }

  void cholSlider(value) {
    chol = value;
    emit(ChangeSliderState(
        chestPainType, slopeType, coloredVessles, restBP, chol, rc, maxHrate));
  }

  void rcSlider(value) {
    rc = value;
    emit(ChangeSliderState(
        chestPainType, slopeType, coloredVessles, restBP, chol, rc, maxHrate));
  }

  void maxHSlider(value) {
    maxHrate = value;
    emit(ChangeSliderState(
        chestPainType, slopeType, coloredVessles, restBP, chol, rc, maxHrate));
  }

  void exangSelect(val) {
    exangValue = val;
    emit(ExangSelectState());
  }

  void fbsSelect(val) {
    fbsValue = val;
    emit(FbsSelectState());
  }

  void thalSlider(val) {
    thalValue = val;
    emit(ExangSelectState());
  }

  //! Dio Code !\\

  final dio = Dio();

  void request() async {
    Response response;

    response = await dio.get(
      'https://flask-tutorial-deploy1-7b72584e3119.herokuapp.com/predict',
      queryParameters: {
        'age': age.toInt(),
        'sex': genderValue.toInt(),
        'cp': chestPainType.toInt(),
        'trestbps': restBP.toInt(),
        'chol': chol.toInt(),
        'fbs': fbsValue,
        'restecg': rc.toInt(),
        'thalach': maxHrate.toInt(),
        'exang': exangValue,
        'oldpeak': 1.039,
        'slope': slopeType.toInt(),
        'ca': coloredVessles.toInt(),
        'thal': thalValue.toInt(),
      },
    );
    emit(ResponseState(
      response,
    ));
    predict = response.data.toString();
    // print('Your Predict is \n $predict');
    print('Your Predict is \n $predict');

    emit(ResponseState(
      response,
    ));
    // print('=======${response.data}');
  }

  void testPrint() {
    print(age.toInt());
    print(genderValue.toInt());
    print(chestPainType.toInt());
    print(restBP.toInt());
    print(chol.toInt());
    print(fbsValue.toInt());
    print(rc.toInt());
    print(maxHrate.toInt());
    print(exangValue.toInt());
    print(slopeType.toInt());
    print(coloredVessles.toInt());
  }
}
// void convertResult