import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  int currentIndex = 0;

  List info = [
    {
      'asset': 'assets/images/image_1.png',
      'title': 'Real Estate',
    },
    {
      'asset': 'assets/images/image_2.png',
      'title': 'Buy & Sell',
    },
    {
      'asset': 'assets/images/image_3.png',
      'title': 'List Apartment',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final indicators = List.generate(
      3,
      (index) => GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Container(
          width: 10.w,
          height: 10.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index ? Colors.black : Colors.white,
            border: Border.all(color: Colors.black),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: SizedBox(
          width: 50.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: indicators,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: GestureDetector(
              onTap: () {
                if (currentIndex == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Login();
                      },
                    ),
                  );
                } else {
                  setState(() {
                    currentIndex++;
                  });
                }
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(119, 128, 135, 1),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 250.h,
              child: Image.asset(
                info[currentIndex]['asset'],
              ),
            ),
            Text(
              info[currentIndex]['title'],
              style: const TextStyle(
                color: Color.fromRGBO(23, 31, 36, 1),
                fontSize: 34,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts.',
              style: TextStyle(
                color: Color.fromRGBO(119, 128, 135, 1),
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Login();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
