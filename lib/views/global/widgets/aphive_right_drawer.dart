import 'package:aphive/cubits/home_page_cubit.dart';
import 'package:aphive/data/models/filter.dart';
import 'package:aphive/routes.dart';
import 'package:aphive/theme/assets.dart';
import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:aphive/views/global/widgets/aphive_checkbox.dart';
import 'package:aphive/views/global/widgets/filter_checkboxes_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:get/get.dart';

import 'drawer_item_tile.dart';

class AphiveRightDrawer extends StatelessWidget {
  final HomePageCubit _homePageCubit = Get.find();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, homePageState) => Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Drawer Header
            DrawerHeader(
              padding: EdgeInsets.only(
                top: 20.r,
                bottom: 20.r,
                left: 20.r,
                right: 20.r,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.gradientPurpleBlue),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// Header Title
                  Text(
                    'Filter ${homePageState.promotionsDrawer ? 'promotions' : 'experiences'}',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.getWhiteBigSectionHeadingTextStyle(),
                  ),

                  SizedBox(height: 70.0.w),

                  /// Date Boxes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// From date box
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70.r,
                          vertical: 10.r,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Text(
                          'From\n${homePageState.promotionsDrawer ? homePageState.rightMenuPromotionsFromDate : homePageState.rightMenuExperiencesFromDate}',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.getSemiNormalWhiteTextStyle(),
                        ),
                      ),

                      /// To date box
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70.r,
                          vertical: 10.r,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Text(
                          'From\n${homePageState.promotionsDrawer ? homePageState.rightMenuPromotionsFromDate : homePageState.rightMenuExperiencesFromDate}',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.getSemiNormalWhiteTextStyle(),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 60.0.w),

                  /// Anytime checkbox
                  Row(
                    children: [
                      SizedBox(width: 80.r),

                      /// Checkbox
                      AphiveCheckbox(
                        value: homePageState.promotionsDrawer
                            ? homePageState.promotionsAnytimeChecked
                            : homePageState.experiencesAnytimeChecked,
                        white: true,
                        size: 50.r,
                        onChanged: (value) {
                          _homePageCubit.setPromotionsAnytimeChecked(value);
                          print(value);
                        },
                      ),

                      SizedBox(width: 20.r),

                      /// Checkbox text
                      Text(
                        'Anytime',
                        style: AppTextStyles.getSemiLargeWhiteTextStyle(),
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 80.r),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.r),
              child: FilterCheckBoxesList(
                homePageState: homePageState,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
