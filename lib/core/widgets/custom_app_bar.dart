
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h, bottom: 20.h),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Container(),
          IconButton(
              onPressed: () {
              },
              icon: const Icon(
                Icons.search,
                size: 24,
              ))
        ],
      ),
    );
  }
}
