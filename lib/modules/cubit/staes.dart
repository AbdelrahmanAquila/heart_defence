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

// class AppFieldSubmit extends AppStates {
//   // final int age;
//   // final TextEditingController? ageController;

//   // AppFieldSubmit(this.age, this.ageController);
// }
