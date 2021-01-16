import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class SmallNameValue extends StatelessWidget {
  const SmallNameValue({
    this.name,
    this.value,
  });

  final String name;
  final String value;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: AppTextStyles.getNormalTextStyle(),
        ),

        SizedBox(width: 40.w),

        Text(
          value,
          style: AppTextStyles.getNormalTextStyle(),
        ),
      ],
    );
  }
}
