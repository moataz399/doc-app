import 'package:base_project/core/routing/routes.dart';
import 'package:base_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/internet_cubit.dart';
import 'core/routing/app_router.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          title: 'Doc App',
          theme: ThemeData(
              backgroundColor: Colors.white,
              primaryColor: AppColors.mainBlue,
              scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.homeScreen
          ,
        ));
  }
}
