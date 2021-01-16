import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:aphive/views/global/widgets/expandable_venue_section.dart';
import 'package:aphive/views/global/widgets/grey_details_section.dart';
import 'package:aphive/views/global/widgets/expandable_offer_description_section.dart';
import 'package:aphive/views/global/widgets/small_name_value.dart';
import 'package:aphive/views/pages/offer_details_page/offer_details_view_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/size_extension.dart';

class OfferDetailsPage extends StatelessWidget {
  final OfferDetailsViewModel _offerDetailsViewModel = Get.find();

  /// Carousel Controller for changing image on arrow press
  final CarouselController arrowCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    /// Screen width
    final screenWidth = MediaQuery.of(context).size.width;

    /// Screen height
    final screenHeight = MediaQuery.of(context).size.height;

    /// Height of Carousel
    final carouselHeight = screenHeight * 0.40;

    /// Arrow size of Carousel
    final carouselArrowSize = 180.w;

    /// Image change duration on arrow press
    final arrowPressPageChangeDuration = Duration(milliseconds: 300);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          /// Container for sizing the stack that contains Image Carousel
          Container(
            width: screenWidth,
            height: carouselHeight,

            /// Stack for positioning arrows on the Image Carousel
            child: Stack(
              alignment: Alignment.center,
              children: [
                /// Image Carousel
                CarouselSlider(
                  carouselController: arrowCarouselController,
                  options: CarouselOptions(
                    height: carouselHeight,
                    viewportFraction: 1,
                  ),
                  items: _offerDetailsViewModel.offer.imageUrls
                      .map<Widget>((imageUrl) {
                    return Container(
                      width: screenWidth,
                      child: Image(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                ),

                /// Slider left arrow
                Positioned(
                  left: 40.w,
                  child: GestureDetector(
                    onTap: () {
                      arrowCarouselController.previousPage(
                        duration: arrowPressPageChangeDuration,
                        curve: Curves.linear,
                      );
                    },

                    /// Left arrow icon
                    child: Icon(
                      Icons.chevron_left,
                      size: carouselArrowSize,
                      color: Colors.white,
                    ),
                  ),
                ),

                /// Slider right arrow
                Positioned(
                  right: 40.w,
                  child: GestureDetector(
                    onTap: () {
                      arrowCarouselController.nextPage(
                        duration: arrowPressPageChangeDuration,
                        curve: Curves.linear,
                      );
                    },

                    /// Right arrow icon
                    child: Icon(
                      Icons.chevron_right,
                      size: carouselArrowSize,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 60.h),

          /// Offer Title
          Text(
            _offerDetailsViewModel.offer.title,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: AppTextStyles.getPageTitleTextStyle(),
          ),

          SizedBox(height: 20.h),

          /// Offer venue name
          Text(
            _offerDetailsViewModel.offer.venue.name,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: AppTextStyles.getPageSubTitleTextStyle(),
          ),

          SizedBox(height: 80.h),

          /// Offer value
          Text(
            _offerDetailsViewModel.offer.value,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: AppTextStyles.getBluePageSubTitleTextStyle(),
          ),

          /// Buy button
          Align(
            child: SizedBox(
              width: 700.w,
              child: RaisedButton(
                color: AppThemeColors.primaryBlue,
                onPressed: () {},
                child: Text(
                  'Buy',
                  style: AppTextStyles.getButtonTextStyle(),
                ),
              ),
            ),
          ),

          SizedBox(height: 20.h),

          /// Refund policy
          Text(
            'Refund policy',
            textAlign: TextAlign.center,
            style: AppTextStyles.getSmallBlueTextStyle(),
          ),

          SizedBox(height: 40.h),

          /// Offer Description Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ExpandableOfferDescriptionSection(
              title: 'Offer Description',
            ),
          ),

          SizedBox(height: 10.h),

          /// Venue Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ExpandableVenueSection(
              title: _offerDetailsViewModel.offer.venue.name,
            ),
          ),

          SizedBox(height: 10.h),

          /// Special Information Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ExpandableReservationSection(
              title: 'Special information',
            ),
          ),

          SizedBox(height: 30.h),

          /// Home text
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 110.w),
              child: Text(
                'Home',
                textAlign: TextAlign.end,
                style: AppTextStyles.getNormalBlueTextStyle(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
