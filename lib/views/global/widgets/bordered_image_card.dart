import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class BorderedImageCard extends StatelessWidget {
  String text;
  String asset;

  BorderedImageCard({
    this.text,
    this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0.w, horizontal: 20.0.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: Column(
        children: [
          /// Card Icon
          Image.asset(
            asset,
            width: 100.0.w,
            height: 100.0.w,
            fit: BoxFit.fitHeight,
          ),

          SizedBox(height: 20.0.w),

          /// Card Text
          Text(
            text,
            style: activeCardStyle,
          ),
        ],
      ),
    );
  }
}
