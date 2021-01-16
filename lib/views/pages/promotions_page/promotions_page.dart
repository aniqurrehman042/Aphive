import 'package:aphive/routes.dart';
import 'package:aphive/theme/assets.dart';
import 'package:aphive/theme/decorations.dart';
import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:aphive/views/global/widgets/aphive_left_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:get/get.dart';

import 'promotions_page_view_model.dart';

class PromotionsPage extends StatelessWidget {
  final PromotionsPageViewModel _promotionsPageViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    final _drawerKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _drawerKey,
      drawer: AphiveLeftDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 70.w,
                vertical: 50.w,
              ),
              color: AppThemeColors.primaryBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Menu icon
                  GestureDetector(
                    onTap: () {
                      _drawerKey.currentState.openDrawer();
                    },
                    child: Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 100.w,
                    ),
                  ),

                  /// Page title
                  Text(
                    'Promotions',
                    style: AppTextStyles.getWhitePageTitleTextStyle(),
                  ),

                  /// Map icon
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.homePage);
                    },
                    child: Image.asset(
                      Assets.icMap,
                      width: 100.w,
                      height: 100.w,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 60.h),

            /// Categories filter
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 40.w,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 50.w,
                vertical: 30.w,
              ),
              decoration: AppDecorations.getRoundedBlueBorderShapeDecoration(),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: AppDecorations.getNoBorderInputDecoration(
                  hint: 'Categories',
                  icon: Icons.filter_alt_outlined,
                ),
              ),
            ),

            SizedBox(height: 60.h),

            /// Promotions list
            Expanded(
              child: ListView.builder(
                itemCount: _promotionsPageViewModel.offers.length,

                /// Container for shadow and border radius
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 40.w,
                    vertical: 40.w,
                  ),
                  decoration: BoxDecoration(
                      color: AppThemeColors.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        )
                      ]),

                  /// Promotion Content
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      /// ClipRRect for rounded edges
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),

                        /// Offer image
                        child: Image.network(
                          _promotionsPageViewModel.offers[index].imageUrls[0],
                          height: MediaQuery.of(context).size.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                      ),

                      /// Offer Text Content
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50.w,
                          vertical: 40.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            /// Offer title
                            Text(
                              _promotionsPageViewModel.offers[index].title,
                              maxLines: 2,
                              style: AppTextStyles.getPageSubTitleTextStyle(),
                            ),

                            SizedBox(height: 40.h),

                            /// Offer title
                            Text(
                              _promotionsPageViewModel.offers[index].description,
                              maxLines: 2,
                              style: AppTextStyles.getNormalGreyTextStyle(),
                            ),

                            SizedBox(height: 60.h),

                            /// Venue and offer value
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                /// Venue
                                Text(
                                  _promotionsPageViewModel.offers[index].venue.name,
                                  style: AppTextStyles.getBlueSectionHeadingTextStyle(),
                                ),

                                /// Offer value
                                Text(
                                  '£${_promotionsPageViewModel.offers[index].value}',
                                  style: AppTextStyles.getBlueSectionHeadingTextStyle(),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
