import 'package:aphive/theme/assets.dart';
import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class FilterTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: semiBlue,
      padding:
      EdgeInsets.symmetric(vertical: 10.0.w, horizontal: 80.0.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.white70,
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter location',
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 0.0, vertical: 20.0.w),
                hintStyle: whiteHintStyle,
              ),
            ),
          ),

          SizedBox(
            width: 30.0.w,
          ),

          /// Divider
          SizedBox(
            width: 1.0,
            child: Container(
              width: 1.0,
              height: 90.0.w,
              color: Colors.white70,
            ),
          ),

          SizedBox(
            width: 80.0.w,
          ),

          /// Filter Icon
          Image.asset(
            Assets.filterWhite,
            width: 50.0.w,
            height: 50.0.w,
          )
        ],
      ),
    );
  }
}
