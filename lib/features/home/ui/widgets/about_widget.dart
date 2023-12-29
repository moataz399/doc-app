import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                "About me ",
                style: TextStyles.font16BlackBoldMedium,
              ),
            ),
            verticalSpace(6),
            SizedBox(
              height: 110.h,
              width: double.infinity,
              child: Text(
                "Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.several awards for her wonderful contribution in medical field. She is available for private consultation. ",
                maxLines: 5,
                style: TextStyles.font14GrayRegular.copyWith(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            verticalSpace(24),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Working Time",
                style: TextStyles.font16BlackBoldMedium,
              ),
            ),
            verticalSpace(12),
            SizedBox(
              width: double.infinity,
              child: Text("Monday - Friday, 08.00 AM - 20.00 PM ",
                  style: TextStyles.font14GrayRegular),
            ),
            verticalSpace(24),
            SizedBox(
              width: double.infinity,
              child: Text(
                "STR",
                style: TextStyles.font16BlackBoldMedium,
              ),
            ),
            verticalSpace(12),
            SizedBox(
              width: double.infinity,
              child: Text(
                "4726482464",
                maxLines: 1,
                style: TextStyles.font14GrayRegular,
              ),
            ),
            verticalSpace(24),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Practical Experience",
                style: TextStyles.font16BlackBoldMedium,
              ),
            ),
            verticalSpace(12),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Gatot Soebroto Army Hospital",
                maxLines: 1,
                style: TextStyles.font14GrayRegular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
