import 'package:base_project/core/helpers/extensions.dart';
import 'package:base_project/core/routing/routes.dart';
import 'package:base_project/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 52),
        ),
      ),
      child:  Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    );
  }
}
