import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/login_screen.dart';
import 'package:plan_together/widgets/get_textfield.dart';
import 'package:plan_together/widgets/mainButton.dart';
import '../utils/global_colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  child: Text('Sign up',
                      style: TextStyle(
                          fontSize: 30.sp,
                          height: 0.9.sp,
                          fontFamily: 'ProximaNovaSemiBold',
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 15.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.sp),
                  child: Text(
                    'Welcome! Please enter your Name, email and password to create your account.',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'ProximaNovaRegular',
                        fontWeight: FontWeight.w400,
                        color: grey),
                  ),
                ),
                SizedBox(height: 30.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    children: [
                      getTextField(hint: 'Full Name', label: 'Full Name'),
                      SizedBox(height: 20.sp),
                      getTextField(
                          hint: 'Country e.g Pakistan', label: 'Country'),
                      SizedBox(height: 20.sp),
                      getTextField(hint: 'Email Address', label: 'Email Address'),
                      SizedBox(height: 20.sp),
                      getTextField(hint: 'Your Password', label: 'Password'),
                      SizedBox(height: 20.sp),
                      getTextField(
                          hint: 'Re-enter Password', label: 'Re-enter Password'),
                      SizedBox(height: 30.sp),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            )),
                        child: MainButton(
                            textFont: FontWeight.w700,
                            textSize: 16.sp,
                            color: primaryColor,
                            text: 'Sign up',
                            // fontFamily: 'ProximaNovaRegular',
                            textColor: Colors.white),
                      ),
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
              'Already have an account?',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'DMSansRegular',
                fontWeight: FontWeight.w400,
                color: grey,
              ),
            ),
            SizedBox(
              width: 3.sp,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  )),
              child: Text(
                'Login',
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
