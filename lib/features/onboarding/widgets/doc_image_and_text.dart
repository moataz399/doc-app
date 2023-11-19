import 'package:base_project/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/doc_logo_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.014, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onBoarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            '  Best Doctor Appointment App',
            style: Styles.font32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
