
// import 'package:dio/dio.dart';
// import 'package:heart_defence/modules/cubit/cubit.dart';

// class DioHelper {
//     final dio = Dio();

//   void request(contextg) async {
//     Response response;
//     // //   response = await dio.get('/test?id=12&name=dio');
//     // //   print(response.data.toString());
//     // //   The below request is the same as above.
//     response = await dio.get(
//       'https://flask-tutorial-deploy1-7b72584e3119.herokuapp.com/predict',
//       queryParameters: {
//         'age':AppCubit.get(context).toInt(),
//         'sex': genderValue.toInt(),
//         'cp': chestPainType.toInt(),
//         'trestbps': restBP.toInt(),
//         'chol': chol.toInt(),
//         'fbs': fbsValue,
//         'restecg': rc.toInt(),
//         'thalach': maxHrate.toInt(),
//         'exang': exangValue,
//         'oldpeak': 1.039,
//         'slope': slopeType.toInt(),
//         'ca': coloredVessles.toInt(),
//         'thal': thalValue.toInt(),
//         // 'age': 57,
//         // 'sex': 0,
//         // 'cp': 0,
//         // 'trestbps': 140,
//         // 'chol': 241,
//         // 'fbs': 0,
//         // 'restecg': 1,
//         // 'thalach': 123,
//         // 'exang': 1,
//         // 'oldpeak': 1.039,
//         // 'slope': 1,
//         // 'ca': 0,
//         // 'thal': 3,
//       },
//     );

//     print('=======${response.data}');
//   }
//     ));
//   }

