import 'package:base_project/core/helpers/spacing.dart';
import 'package:base_project/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorsSection extends StatelessWidget {
  const RecommendationDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 110.w,
                    height: 110.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Image.asset('assets/images/doctor.png')),
                horizontalSpace(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 201,
                      height: 24,
                      child: Text('Dr. Randy Wigham',
                          style: TextStyles.font16BlackBoldSemiBold),
                    ),
                    verticalSpace(8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24,
                          child: Text('General',
                              style: TextStyles.font12GreyMedium),
                        ),
                        horizontalSpace(8),
                        const Text(
                          '|',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                        horizontalSpace(8),
                        SizedBox(
                          width: 150,
                          child: Text(
                              'RSUD Gatot  antoni blitz sd asd as dasd as das ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyles.font12GreyMedium),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 18.w,
                          height: 18.h,
                          child: Image.asset(
                            "assets/images/star.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        horizontalSpace(2),
                        SizedBox(
                          height: 24,
                          child:
                              Text('4.8', style: TextStyles.font12GreyMedium),
                        ),
                        horizontalSpace(4),
                        SizedBox(
                          height: 24,
                          child: Text('(4,279 reviews)',
                              style: TextStyles.font12GreyMedium),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
