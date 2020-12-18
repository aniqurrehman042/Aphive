import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularBorderedIconButton extends StatelessWidget {
  final void Function() onPressed;
  final Color backgroundColor;
  final IconData icon;
  final Color borderColor;
  final Color iconColor;

  const CircularBorderedIconButton({
    this.onPressed,
    this.backgroundColor,
    this.icon,
    this.borderColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 4.0,
      focusElevation: 6.0,
      hoverElevation: 6.0,
      highlightElevation: 8.0,
      fillColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 5.0.w,
            color: borderColor,
          ),
        ),
        child: Icon(
          icon,
          size: 105.0.w,
          color: iconColor,
        ),
      ),
      constraints: BoxConstraints(
        minHeight: 150.0.w,
        minWidth: 150.0.w,
        maxHeight: 150.0.w,
        maxWidth: 150.0.w,
      ),
    );
  }
}
