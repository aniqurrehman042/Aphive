import 'package:aphive/theme/assets.dart';
import 'package:aphive/theme/theme_colors.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:aphive/views/pages/experiences_page/details_expandable_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class ExperiencesPage extends StatefulWidget {
  static const tag = 'ExperiencesPage';

  @override
  _ExperiencesPageState createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          /// Page Header
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(Assets.venue), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 100.0.w),

                    /// Page Title Area
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0.w, horizontal: 40.0.w),
                      decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.brown.withOpacity(0.6),
                          width: 0.5,
                        ),
                      ),

                      /// Page Title
                      child: Text(
                        'Experience title',
                        textAlign: TextAlign.center,
                        style: pageTitleStyle,
                      ),
                    ),

                    Expanded(
                      child: SizedBox(),
                    ),

                    /// Venue
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.0.w,
                        horizontal: 40.0.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.brown.withOpacity(0.6),
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Venue',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Text(
                            '£30.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.green[600],
                                fontSize: 40.0.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 50.0.w),
                  ],
                ),
              ),
            ),
          ),

          /// Page Body
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0.w),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(50.0.w),
                        child: Column(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 50.0.w),
                            Text(
                              '£30.00',
                              style: TextStyle(
                                color: primaryBlue,
                              ),
                            ),

                            ///Book Now Buttom
                            MaterialButton(
                              onPressed: () {},
                              color: primaryBlue,
                              child: Text(
                                'Book now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            SizedBox(height: 50.0.w),

                            Text(
                              'Validity: anytime before March',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 30.0.sp,
                              ),
                            ),

                            SizedBox(height: 20.0.w),

                            Text(
                              'Refund policy',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 30.0.sp,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  /// Details Expandable List
                  Expanded(
                    child: DetailsExpandableList(),
                  ),

                  SizedBox(height: 50.0.w),

                  /// Back Button
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: primaryBlue,
                        fontSize: 50.0.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0.w),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
