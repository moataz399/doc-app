import 'package:base_project/core/theming/text_styles.dart';
import 'package:flutter/material.dart';



class AlreadyHaveAccountText extends StatelessWidget {
   AlreadyHaveAccountText({super.key,required this.function});


  void Function() function;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account?',
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: ' Sign Up',
              style: TextStyles.font13BlueSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}