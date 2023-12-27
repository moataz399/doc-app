import 'package:base_project/core/helpers/spacing.dart';
import 'package:base_project/core/theming/text_styles.dart';
import 'package:base_project/features/home/ui/widgets/custom_app_bar_home_screen.dart';
import 'package:base_project/features/home/ui/widgets/dctor_speciality.dart';
import 'package:base_project/features/home/ui/widgets/header_section_home_screen.dart';
import 'package:base_project/features/home/ui/widgets/recomendation_doctor_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomAppBarHomeScreen(),
              verticalSpace(3),
              const HeaderSectionHomeScreen(),
              verticalSpace(24),
              //doctor speciality
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text('Doctor Speciality',
                          style: TextStyles.font18BlackSemiBold),
                    ),
                    const Spacer(),
                    Container(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'See All',
                            style: TextStyles.font12BlueRegular,
                          ),
                        ))
                  ],
                ),
              ),
              verticalSpace(24),
              const DoctorSpeciality(),
              verticalSpace(24),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text('Recommendation Doctor',
                          style: TextStyles.font18BlackSemiBold),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'See All',
                          style: TextStyles.font12BlueRegular,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const RecommendationDoctorsSection(),
            ],
          ),
        ),
      )),
    );
  }
}
