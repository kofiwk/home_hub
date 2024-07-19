import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_hub/screens/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: 200.h,
                  maxHeight: 310.h,
                ),
                child: Image.asset(
                  'assets/images/login.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Transform.translate(
                  offset: Offset(0, 180.h),
                  child: SizedBox(
                    height: 100.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Sign in to access an account and explore many things',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 402.h,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    width: 61.w,
                    height: 4.h,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(219, 219, 219, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50.h,
                          width: 163.w,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Home();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 50.h,
                          width: 163.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              elevation: 0,
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          width: 112.w,
                          height: 1.h,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.black],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const Text(
                        'Or Login',
                        style: TextStyle(
                          color: Color.fromRGBO(30, 30, 30, 2),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Container(
                          width: 112.w,
                          height: 1.h,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.black],
                              end: Alignment.centerLeft,
                              begin: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SizedBox(
                    height: 190.h,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SocialAuthButton(
                          assetName: 'assets/icons/google.png',
                          label: 'Sign up with Google',
                        ),
                        SocialAuthButton(
                          assetName: 'assets/icons/apple.png',
                          label: 'Login with Apple',
                        ),
                        SocialAuthButton(
                          assetName: 'assets/icons/facebook.png',
                          label: 'Login with Facebook',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton(
      {super.key,
      required this.assetName,
      required this.label,
      this.onPressed});

  final String assetName;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color.fromRGBO(225, 225, 225, 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              assetName,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              label,
              style: const TextStyle(
                color: Color.fromRGBO(39, 42, 49, 1),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
