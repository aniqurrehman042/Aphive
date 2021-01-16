import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:aphive/views/pages/offer_details_page/offer_details_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:get/get.dart';

class ExpandableReservationSection extends StatefulWidget {
  ExpandableReservationSection({
    this.title,
  });

  final String title;

  @override
  _ExpandableReservationSectionState createState() => _ExpandableReservationSectionState();
}

class _ExpandableReservationSectionState extends State<ExpandableReservationSection> {
  final OfferDetailsViewModel _offerDetailsViewModel = Get.find();

  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: AppThemeColors.lightGrey,
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 80.w,
          vertical: 40.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Heading and Arrow
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: AppTextStyles.getBlueSectionHeadingTextStyle(),
                  ),

                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 60.w,
                  )
                ],
              ),
            ),

            SizedBox(height: 30.h),

            /// Reservation details
            Text(
              _offerDetailsViewModel.offer.reservationDetails,
              maxLines: expanded ? 2 : null,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.getNormalTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
