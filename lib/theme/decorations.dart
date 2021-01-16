import 'package:aphive/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AppDecorations {
  static InputDecoration getNoBorderInputDecoration({
    String hint,
    IconData icon,
  }) {
    return InputDecoration(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      contentPadding: EdgeInsets.all(0.0),
      isDense: true,
      hintText: hint,
      hintStyle: TextStyle(
        color: Colors.black,
        fontSize: 46.nsp,
      ),
      suffixIcon: icon != null
          ? Icon(
              icon,
              color: AppThemeColors.primaryBlue,
              size: 70.w,
            )
          : null,
      suffixIconConstraints: BoxConstraints(
        maxHeight: 70.w,
        maxWidth: 70.w,
      )
    );
  }

  static ShapeDecoration getRoundedBlueBorderShapeDecoration() {
    return ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.0,
          style: BorderStyle.solid,
          color: AppThemeColors.primaryBlue,
        ),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
    );
  }
}
