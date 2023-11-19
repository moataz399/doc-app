import 'package:base_project/core/styles.dart';
import 'package:base_project/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:base_project/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:base_project/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.h),
            const DocLogoAndName(),
            SizedBox(height: 30.h),
            const DocImageAndText(),
            //Get Started Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: Styles.font13GrayRegular,
                  ),
                  SizedBox(height: 30.h),
                  const GetStartedButton(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
