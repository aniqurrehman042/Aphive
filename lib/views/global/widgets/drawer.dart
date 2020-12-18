import 'package:aphive/theme/assets.dart';
import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:aphive/views/pages/experiences_page/experiences_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

import 'drawer_item_tile.dart';

class AphiveDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          /// Drawer Header
          DrawerHeader(
            padding: EdgeInsets.only(top: 0.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.gradientPurpleBlue),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                /// Edit Icon Area
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(),
                    ),

                    /// Edit Icon
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(20.0.w),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 60.0.w),
                  ],
                ),

                SizedBox(height: 20.0.w),

                /// Header Title
                Text(
                  'Amanda Smith',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 75.0.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),

                SizedBox(height: 20.0.w),

                /// Header Subtitle
                Text(
                  'Amanda.Smith@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),

          /// Aphive Points Tile
          ListTile(
            title: Text(
              'Aphive points',
              style: drawerTileTextStyle,
            ),
            leading: Image.asset(
              Assets.colorCube,
              width: 120.0.w,
              height: 120.0.w,
            ),
            trailing: Container(
              padding:
                  EdgeInsets.symmetric(vertical: 20.0.w, horizontal: 40.0.w),
              decoration: BoxDecoration(
                color: primaryBlue,
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Text(
                '63.5',
                style: h4White,
              ),
            ),
          ),

          SizedBox(height: 80.0.w),

          /// Experiences Tile
          DrawerItemTile(
            text: 'Experiences',
            asset: Assets.experiencesPurple,
            targetPageTag: ExperiencesPage.tag,
          ),

          /// Promotions Tile
          DrawerItemTile(
            text: 'Promotions',
            asset: Assets.promotionsBlue,
          ),

          /// Car Parks Tile
          DrawerItemTile(
            text: 'Car Parks',
            asset: Assets.carParkGreen,
          ),

          SizedBox(height: 80.0.w),

          /// Wallet Tile
          DrawerItemTile(
            text: 'Wallet',
            asset: Assets.wallet,
          ),

          /// Notifications Tile
          DrawerItemTile(
            text: 'Notifications',
            asset: Assets.notification,
          ),

          Expanded(
            child: SizedBox(),
          ),

          /// Legal label
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 250.0.w, bottom: 80.0.w),
                child: Text(
                  'Legal',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 35.0.sp,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}