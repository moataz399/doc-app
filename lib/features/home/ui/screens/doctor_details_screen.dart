import 'package:base_project/core/theming/colors.dart';
import 'package:base_project/core/widgets/app_text_button.dart';
import 'package:base_project/features/home/ui/widgets/review_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';
import '../widgets/about_widget.dart';
import '../widgets/doctor_card.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageViewController = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Dr.Moataz Mohamed"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DoctorCard(),
                TabBar(
                  dividerColor: AppColors.lightGray,
                  labelColor: AppColors.mainBlue,
                  unselectedLabelColor: AppColors.gray,
                  indicatorColor: AppColors.mainBlue,
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: "About",
                    ),
                    Tab(
                      text: "Location",
                    ),
                    Tab(
                      text: "Reviews",
                    ),
                  ],
                ),
                SizedBox(
                  height: 460.h,
                  width: double.infinity,
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    dragStartBehavior: DragStartBehavior.start,
                    controller: _tabController,
                    children: const [
                      AboutWidget(),
                      Center(
                        child: Text("It's rainy here"),
                      ),
                    ReviewCard()
                    ],
                  ),
                ),
                verticalSpace(12),
                AppTextButton(
                    backgroundColor: AppColors.mainBlue,
                    buttonText: "Make An Appointment",
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
