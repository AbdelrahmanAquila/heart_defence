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
Widget dataSlider(context,
        {required double slider,
        required String text,
        required double min,
        required double max,
        required void Function(double)? onChanged,
        int? divisions,
        String? lable}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Theme.of(context).textTheme.headlineMedium),
        Slider(
            min: min,
            max: max,
            value: slider,
            label: lable,
            divisions: divisions,
            onChanged: onChanged),
        const Divider(
          color: Colors.black,
          thickness: 2,
        ),
      ],
    );

Widget radioSelect(context,
        {required String title,
        required var selectedValue,
        required void Function(dynamic)? function}) =>
    Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Yes', style: Theme.of(context).textTheme.headlineSmall),
            Radio(value: 1, groupValue: selectedValue, onChanged: function),
            const SizedBox(
              width: 30,
            ),
            Radio(value: 0, groupValue: selectedValue, onChanged: function),
            Text('No', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
        const Divider(
          color: Colors.black,
          thickness: 2,
        ),
      ],
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
