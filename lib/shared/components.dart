import 'package:flutter/material.dart';

void navigateTo(context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

Widget genderSelect(
  context, {
  required IconData icon,
  required String gender,
  required Function()? ontap,
  required Color color,
}) =>
    SizedBox(
      height: 150,
      width: 150,
      child: InkWell(
        onTap: ontap,
        child: Card(
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Icon(
                  color: Colors.white,
                  icon,
                  size: 75,
                ),
                Text(gender,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white))
              ],
            ),
          ),
        ),
      ),
    );

// Widget contenueButton(void onTap, String text) => SizedBox(
//       height: 50,
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: () {
//           onTap;
//         },
//         child: Text(
//           text,
//           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//         ),
//       ),
//     );
