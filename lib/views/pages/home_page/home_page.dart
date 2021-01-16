import 'package:aphive/theme/assets.dart';
import 'package:aphive/views/bottomsheets/location_selector_bottom_sheet.dart';
import 'package:aphive/views/global/widgets/aphive_left_drawer.dart';
import 'package:aphive/views/global/widgets/aphive_right_drawer.dart';
import 'package:aphive/views/global/widgets/google_map_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _topButtonSize = 180.0.w;
  final double topButtonTopMargin = 160.0.h;
  final double topButtonHorizontalMargin = 80.0.h;

  @override
  Widget build(BuildContext context) {
    final _drawerKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _drawerKey,
      drawer: AphiveLeftDrawer(),
      endDrawer: AphiveRightDrawer(),
      body: Container(
        color: Colors.grey,
        child: Stack(
          children: [
            /// Google Map Widget
            // GoogleMapWidget(),

            /// Placeholder Map Image
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Image.asset(
                  Assets.map,
                fit: BoxFit.cover,
              ),
            ),

            /// Menu Button
            Positioned(
              left: topButtonHorizontalMargin,
              top: topButtonTopMargin,
              child: GestureDetector(
                onTap: () {
                  _drawerKey.currentState.openDrawer();
                },
                child: Image.asset(
                  Assets.hamMenu,
                  height: _topButtonSize,
                  width: _topButtonSize,
                ),
              ),
            ),

            /// QR Button
            Positioned(
              right: topButtonHorizontalMargin,
              top: topButtonTopMargin,
              child: Image.asset(
                Assets.qrCode,
                height: _topButtonSize,
                width: _topButtonSize,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: LocationSelectorBottomSheet(),
    );
  }
}
