import 'package:flutter/material.dart';
import 'package:heart_defence/modules/data_take_screen.dart';
import 'package:heart_defence/shared/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white10,
      //   elevation: 0,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60.0,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'صحتك بالدنيا',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.black),
                ),
              ],
            ),
            Text(
              'تعالى معايا نعمل فحص سريع عشان نتطمن على صحة قلبك',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Image(
              fit: BoxFit.cover,
              height: 400,
              image: AssetImage(
                'assets/images/heartVector.png',
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  navigateTo(context, const ClintDataScreen());
                },
                child: const Text(
                  'متابعة',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
