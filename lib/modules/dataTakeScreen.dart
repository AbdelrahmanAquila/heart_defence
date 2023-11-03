import 'package:flutter/material.dart';
import 'package:heart_defence/shared/colors.dart';

class ClintDataScreen extends StatefulWidget {
  const ClintDataScreen({super.key});

  @override
  State<ClintDataScreen> createState() => _ClintDataScreenState();
}

class _ClintDataScreenState extends State<ClintDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
        child: SingleChildScrollView(
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
                'سجل البيانات دي عشان تطمن على صحتك',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Column(
                children: [
                  Text(
                    'ملحوظة: جزء كبيرمن البيانات دي',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Row(
                    children: [
                      Text(
                        'بيتطلب تحاليل طبية',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      IconButton(
                          color: mainColor,
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('محتاجين التحاليل دي'),
                                content:
                                    const Text('كابشن يا نجم احنا لسة بنtest'),
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
            ],
          ),
        ),
      ),
    );
  }
}

void hi() {}
