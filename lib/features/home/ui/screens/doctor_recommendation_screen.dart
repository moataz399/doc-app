import 'package:base_project/core/helpers/extensions.dart';
import 'package:base_project/core/theming/text_styles.dart';
import 'package:base_project/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../widgets/recomendation_doctor_section.dart';

class DoctorRecommendationScreen extends StatelessWidget {
  const DoctorRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Recommendation Doctor",
          style: TextStyles.font18BlackSemiBold,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300.w,
                      child: AppTextFormField(
                        hintText: 'search ',
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 24,
                        ),
                        validator: (value) {},
                      ),
                    ),
                    horizontalSpace(12),
                    GestureDetector(
                      onTap: () {
                        print('tapped ');
                        context.pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.only(right: 20),
                        width: 24,
                        height: 24,
                        child: const Icon(
                          Icons.filter_list_sharp,
                          size: 26,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(24),
                const RecommendationDoctorsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
