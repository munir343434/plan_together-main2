import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/bottom_tabs.dart';
import 'package:plan_together/views/signup_screen.dart';
import 'package:plan_together/widgets/get_textfield.dart';
import 'package:plan_together/widgets/mainButton.dart';
import '../utils/global_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.sp, right: 50.sp),
                  child: Text('Welcome Back!',
                      style: TextStyle(
                          fontSize: 30.sp,
                          height: 0.9.sp,
                          fontFamily: 'ProximaNovaBold',
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 15.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.sp),
                  child: Text(
                    'Happy to see you again! Please enter your email and password to login to your account.',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'ProximaNovaRegular',
                        fontWeight: FontWeight.w400,
                        color: GlobalColors.grey),
                  ),
                ),
                SizedBox(height: 41.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    children: [
                      getTextField(hint: 'Email Address', label: 'Email Address'),
                      SizedBox(height: 20.sp),
                      getTextField(hint: 'Your Password', label: 'Password'),
                      SizedBox(height: 10.sp),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 7.sp),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'DMSansRegular',
                                  color: GlobalColors.lightBlue),
                            ),
                          )),
                      SizedBox(height: 31.sp),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BottomTabs(),
                            )),
                        child:  MainButton(
                            textFont: FontWeight.w700,
                            textSize: 16.sp,
                            color: GlobalColors.primaryColor,
                            text: 'Login',
                            // fontFamily: 'ProximaNovaRegular',
                            textColor: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 16.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Divider(
                                    height: 1.sp, color: GlobalColors.border)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.sp),
                              child: Text(
                                'Or',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: GlobalColors.grey,
                                    fontFamily: 'ProximaNovaRegular'),
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              height: 1.sp,
                              color: GlobalColors.border,
                            )),
                          ],
                        ),
                      ),
                      MainButton(

                            textFont: FontWeight.w700,
                            textSize: 16.sp,
                            icon: google,
                            border: Border.all(color: GlobalColors.border),
                            color: GlobalColors.white,
                            text: 'Login with Google',
                            // fontFamily: 'ProximaNovaRegular',
                            textColor: Colors.black),
                      // Spacer(),
                    ],
                  ),
                ),

              ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 0.07.sh),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'DMSansRegular',
                fontWeight: FontWeight.w400,
                color: GlobalColors.grey,
              ),
            ),
            SizedBox(
              width: 3.sp,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  )),
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'DMSansBold',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
