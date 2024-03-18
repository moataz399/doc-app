import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class HeaderSectionHomeScreen extends StatelessWidget {
  const HeaderSectionHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197,
      width: double.infinity,
      child: Stack(
        children: [
          PositionedDirectional(
            bottom: 1,
            child: Container(
              width: 343.w,
              height: 168.h,
              decoration: ShapeDecoration(
                color: const Color(0xFF247CFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 18.0.w,
                  top: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 143.w,
                      height: 87.h,
                      child: const Text(
                        'Book and schedule with nearest doctor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    verticalSpace(10.h),
                    AppTextButton(
                        verticalPadding: 10.h,
                        horizontalPadding: 18.w,
                        backgroundColor: Colors.white,
                        buttonWidth: 109.w,
                        buttonHeight: 40.h,
                        borderRadius: 48,
                        buttonText: 'Find Nearby',
                        textStyle: TextStyles.font12BlueRegular,
                        onPressed: () {})
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15.w),
                padding: EdgeInsets.zero,
                width: 136.w,
                height: 197.h,
                child: Image.asset('assets/images/home_doc.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
