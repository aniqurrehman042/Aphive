import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class DrawerItemTile extends StatelessWidget {
  final String text;
  final String asset;
  final String targetPageTag;

  DrawerItemTile({
    this.text,
    this.asset,
    this.targetPageTag,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, targetPageTag);
      },
      title: Text(
        text,
        style: drawerTileTextStyle,
      ),
      leading: Image.asset(
        asset,
        width: 90.0.w,
        height: 90.0.w,
      ),
    );
  }
}
