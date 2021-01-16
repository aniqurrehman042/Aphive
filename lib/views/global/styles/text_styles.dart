import 'package:aphive/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

TextStyle h4White = TextStyle(
  color: Colors.white,
  fontSize: 45.sp,
  fontWeight: FontWeight.w500,
);

TextStyle drawerTileTextStyle = TextStyle(
  fontSize: 50.sp,
);

TextStyle whiteHintStyle = TextStyle(
  fontStyle: FontStyle.italic,
  color: Colors.white,
  fontSize: 35.sp,
);

TextStyle activeCardStyle = TextStyle(
  color: Colors.white,
  fontSize: 40.sp,
  fontWeight: FontWeight.w500,
);

class AppTextStyles {
  static TextStyle getPageTitleTextStyle() => TextStyle(
    fontSize: 65.nsp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle getPageSubTitleTextStyle() => TextStyle(
    fontSize: 60.nsp,
  );

  static TextStyle getWhitePageSubTitleTextStyle() => TextStyle(
    fontSize: 60.nsp,
    color: Colors.white,
  );

  static TextStyle getBluePageSubTitleTextStyle() => TextStyle(
    fontSize: 60.nsp,
    color: AppThemeColors.primaryBlue,
  );

  static TextStyle getBlueSectionHeadingTextStyle() => TextStyle(
    fontSize: 50.nsp,
    color: AppThemeColors.primaryBlue,
  );

  static TextStyle getWhiteBigSectionHeadingTextStyle() => TextStyle(
    fontSize: 55.nsp,
    color: Colors.white,
    fontWeight: FontWeight.w300,
  );

  static TextStyle getBigSectionHeadingTextStyle() => TextStyle(
    fontSize: 55.nsp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle getSmallBlueTextStyle() => TextStyle(
    fontSize: 30.nsp,
    color: AppThemeColors.primaryBlue,
  );

  static TextStyle getSmallWhiteTextStyle() => TextStyle(
    fontSize: 30.nsp,
    color: Colors.white,
  );

  static TextStyle getSemiNormalWhiteTextStyle() => TextStyle(
    fontSize: 35.nsp,
    color: Colors.white,
  );

  static TextStyle getSemiLargeWhiteTextStyle() => TextStyle(
    fontSize: 45.nsp,
    color: Colors.white,
  );

  static TextStyle getNormalTextStyle() => TextStyle(
    fontSize: 40.nsp,
  );

  static TextStyle getNormalGreyTextStyle() => TextStyle(
    fontSize: 40.nsp,
    color: AppThemeColors.darkGrey,
  );

  static TextStyle getNormalBlueTextStyle() => TextStyle(
    fontSize: 40.nsp,
    color: AppThemeColors.primaryBlue,
  );

  static TextStyle getWhitePageTitleTextStyle() => TextStyle(
    color: Colors.white,
    fontSize: 65.nsp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle getButtonTextStyle() => TextStyle(
    color: Colors.white,
    fontSize: 45.nsp,
    fontWeight: FontWeight.w500,
  );
}