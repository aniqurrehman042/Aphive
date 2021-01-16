import 'package:aphive/cubits/home_page_cubit.dart';
import 'package:aphive/theme/assets.dart';
import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:aphive/views/global/widgets/bordered_image_card.dart';
import 'package:aphive/views/global/widgets/filter_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LocationSelectorBottomSheet extends StatelessWidget {
  HomePageCubit _homePageCubit = Get.find();

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(50.0.w),
          color: AppThemeColors.primaryBlue,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Top Title and Expander Icon
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Top Title
                  Text(
                    'Promotions',
                    style: h4White,
                  ),

                  SizedBox(
                    width: 50.0.w,
                  ),

                  /// Expander Icon
                  Image.asset(
                    Assets.expanderWhite,
                    width: 35.0.w,
                    height: 35.0.w,
                  ),
                ],
              ),

              SizedBox(
                height: 30.0.w,
              ),

              /// Location Filter Text Input Area
              FilterTextField(),

              SizedBox(
                height: 50.0.w,
              ),

              /// Type Filter Cards Area
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _homePageCubit.setDrawer(false);
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: BorderedImageCard(
                        text: 'Experiences',
                        asset: Assets.experiencesWhite,
                      ),
                    ),
                  ),
                  SizedBox(width: 40.0.w),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _homePageCubit.setDrawer(true);
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: BorderedImageCard(
                        text: 'Promotions',
                        asset: Assets.promotionsWhite,
                      ),
                    ),
                  ),
                  SizedBox(width: 40.0.w),
                  Expanded(
                    child: BorderedImageCard(
                      text: 'Parking',
                      asset: Assets.carParkWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
