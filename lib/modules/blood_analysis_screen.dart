import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_defence/modules/cubit/cubit.dart';
import 'package:heart_defence/modules/cubit/staes.dart';
import 'package:heart_defence/modules/result_screen.dart';
import 'package:heart_defence/shared/components.dart';

class BloodAnalysisScreen extends StatelessWidget {
  const BloodAnalysisScreen({super.key});

  // final double slider = 0;
  @override
  Widget build(BuildContext context) {
    // var cubit = BlocProvider.of(context);

    return
        // BlocProvider<AppCubit>(
        //     create: (BuildContext context) => AppCubit(),
        BlocConsumer<AppCubit, AppStates>(
            listener: (context, state) {},
            builder: (context, state) => Scaffold(
                    body: SingleChildScrollView(
                        child: Padding(
                  padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
                  child: Column(children: [
                    //! Chest Pain Type Slider !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).chestPainType,
                        text: 'Chest Pain Type',
                        min: 0,
                        max: 3,
                        divisions: 3,
                        lable: AppCubit.get(context)
                            .chestPainType
                            .round()
                            .toString(), onChanged: (value) {
                      AppCubit.get(context).chestPainSlider(value);
                      print(AppCubit.get(context).chestPainType);
                    }),
                    //! resting Blood Pressure !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).restBP,
                        text: 'Resting Blood Pressure',
                        min: 80,
                        max: 220,
                        divisions: 140,
                        lable: AppCubit.get(context).restBP.round().toString(),
                        onChanged: (value) {
                      AppCubit.get(context).bpSlider(value);
                      print(AppCubit.get(context).restBP);
                    }),
                    //! Cholesterol !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).chol,
                        text: 'Cholesterol',
                        min: 100,
                        max: 280,
                        divisions: 180,
                        lable: AppCubit.get(context).chol.round().toString(),
                        onChanged: (value) {
                      AppCubit.get(context).cholSlider(value);
                      print(AppCubit.get(context).chol);
                    }),
                    //! Fasting Blood Suger !\\
                    radioSelect(context,
                        title: '? FBS More Than 120',
                        selectedValue: AppCubit.get(context).fbsValue,
                        function: (val) {
                      AppCubit.get(context).fbsSelect(val);
                      print(AppCubit.get(context).fbsValue);
                    }),
                    //! Resting Cardiogragh !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).rc,
                        text: 'R Cardiogragh',
                        min: 0,
                        max: 2,
                        divisions: 2,
                        lable: AppCubit.get(context).rc.round().toString(),
                        onChanged: (value) {
                      AppCubit.get(context).rcSlider(value);
                      print(AppCubit.get(context).rc);
                    }),
                    //! Maximum Heart Rate !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).maxHrate,
                        text: 'Maximum Heart Rate',
                        min: 100,
                        max: 220,
                        divisions: 120,
                        lable: AppCubit.get(context)
                            .maxHrate
                            .round()
                            .toString(), onChanged: (value) {
                      AppCubit.get(context).maxHSlider(value);
                      print(AppCubit.get(context).maxHrate);
                    }),
                    //! Excerside Indused Angaina!\\
                    radioSelect(context,
                        title: 'Exang',
                        selectedValue: AppCubit.get(context).exangValue,
                        function: (val) {
                      AppCubit.get(context).exangSelect(val);
                      print(AppCubit.get(context).exangValue);
                    }),
                    //! Slope Type !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).slopeType,
                        text: 'Slope Type',
                        min: 0,
                        max: 2,
                        divisions: 2,
                        lable: AppCubit.get(context)
                            .slopeType
                            .round()
                            .toString(), onChanged: (value) {
                      AppCubit.get(context).slopeSlider(value);
                      print(AppCubit.get(context).slopeType);
                    }),
                    //! Colored Vessles !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).coloredVessles,
                        text: 'Vessles Colors',
                        min: 0,
                        max: 3,
                        divisions: 3,
                        lable: AppCubit.get(context)
                            .coloredVessles
                            .round()
                            .toString(), onChanged: (value) {
                      AppCubit.get(context).vessleSlider(value);
                      print(AppCubit.get(context).coloredVessles);
                    }),
                    //! Thalum !\\
                    dataSlider(context,
                        slider: AppCubit.get(context).thalValue,
                        text: 'Thalum',
                        min: 0,
                        max: 3,
                        divisions: 3,
                        lable: AppCubit.get(context)
                            .thalValue
                            .round()
                            .toString(), onChanged: (value) {
                      AppCubit.get(context).thalSlider(value);
                      print(AppCubit.get(context).thalValue);
                    }),
                    //? Navigation Button ?\\
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          AppCubit.get(context).request();

                          // AppCubit.get(context).testPrint();
                          navigateTo(context, const ResultScreen());
                        },
                        child: const Text(
                          'متابعة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    )
                  ]),
                ))));
    //bloc bracet  );
  }
}
