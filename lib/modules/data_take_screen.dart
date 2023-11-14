import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_defence/modules/blood_analysis_screen.dart';
import 'package:heart_defence/modules/cubit/cubit.dart';
import 'package:heart_defence/modules/cubit/staes.dart';
import 'package:heart_defence/shared/colors.dart';
import 'package:heart_defence/shared/components.dart';

class ClintDataScreen extends StatelessWidget {
  const ClintDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'دقيقة من وقتك',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    'محتاجين نسجل شوية بيانات عشان نتطمن على صحتك',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Column(
                    children: [
                      Text(
                        ' ملحوظة: جزء كبيرمن البيانات دي بيتطلب تحاليل طبية و الافضل استخدام التطبيق بواسطة',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Row(
                        // textBaseline: TextBaseline.alphabetic,
                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            ' طبيب او ممرض',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),

                          //Alert Dialoge
                          IconButton(
                              color: mainColor,
                              iconSize: 30,
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text('محتاجين التحاليل دي'),
                                    content: const Text(
                                        '-Chest Pain Type\n-Resting Blood Pressure\n-Cholestrol\n-Fasting Blood Suger\n-Resting Cardiogragh\nMaximum Heart Rate\n-Exercies Induced Angina\n-Slope Of The Peak\n-Number of Colored Heart Vesseles\n-Thalum'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          //TODO اوعى تنسلا تغير دي ابوس ايدك
                                          child: const Text('تمام'))
                                    ],
                                  ),
                                );
                              },
                              icon: const Icon(Icons.info_outline))
                        ],
                      ),
                    ],
                  ),
                  const Divider(color: Colors.black, thickness: 2),
                  const SizedBox(
                    height: 10,
                  ),
                  //Age Input\\
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        'السن',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: SizedBox(
                          // height: 60,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'يجب كتابة السن';
                              }
                              return null;
                            },
                            controller: AppCubit.get(context).ageController,
                            onChanged: (value) {
                              print(value);
                            },
                            onFieldSubmitted: (value) {
                              AppCubit.get(context).age = int.parse(
                                  AppCubit.get(context).ageController!.text);
                              print('========' '${AppCubit.get(context).age}');
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(

                                //  labelText: 'age',
                                hintText: 'قم بادخال السن',
                                border: OutlineInputBorder()),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //Gender Select
                  Text(
                    'الجنس',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.black),
                  ),
                  Row(
                    children: [
                      genderSelect(context,
                          icon: Icons.male,
                          gender: 'ذكر',
                          color: AppCubit.get(context).isMale
                              ? mainColor2
                              : mainColorlight, ontap: () {
                        AppCubit.get(context).toggleMale();
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      genderSelect(
                        context,
                        icon: Icons.female,
                        color: AppCubit.get(context).isMale
                            ? mainColorlight
                            : mainColor2,
                        gender: 'أنثى',
                        ontap: () {
                          AppCubit.get(context).toggleFemale();
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          navigateTo(context, const BloodAnalysisScreen());
                        }
                      },
                      child: const Text(
                        'متابعة',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
