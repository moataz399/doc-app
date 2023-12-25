import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';

class CustomAppBarHomeScreen extends StatelessWidget {
  const CustomAppBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            children: [
              Text(
                'Hi, Moataz!',
                style: TextStyles.font18BlackBold,
              ),
              verticalSpace(2),
              Text(
                'How Are you Today?',
                style: TextStyles.font11greyRegular,
              ),
              verticalSpace(2),
            ],
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            print('tapped');
          },
          child: const CircleAvatar(
            backgroundColor: Color(0xFFF5F5F5),
            child: Icon(
              Icons.notifications_none_outlined,
              size: 26,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
