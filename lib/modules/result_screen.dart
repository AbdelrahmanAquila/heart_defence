import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_defence/modules/cubit/cubit.dart';
import 'package:heart_defence/modules/cubit/staes.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              AppCubit.get(context).request();
            }),
            body: Center(
              child: Text(AppCubit.get(context).predict.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.black)),
            ),
          );
        });
  }
}
