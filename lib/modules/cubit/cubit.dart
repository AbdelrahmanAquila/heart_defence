import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_defence/modules/cubit/staes.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitalState());

  static AppCubit get(context) => BlocProvider.of(context);

  // declare vars
  TextEditingController? ageController = TextEditingController();
  bool isMale = true;
  int genderValue = 1;
  int age = 0;
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

  // void convertAge() {
  //   int age = int.parse(ageController!.text);

  //   emit(AppFieldSubmit());
  // }
}
