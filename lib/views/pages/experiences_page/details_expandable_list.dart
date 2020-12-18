import 'package:aphive/data/models/venue_details.dart';
import 'package:flutter/material.dart';
import 'package:sticky_and_expandable_list/sticky_and_expandable_list.dart';
import 'package:flutter_screenutil/size_extension.dart';

class DetailsExpandableList extends StatefulWidget {
  @override
  _DetailsExpandableListState createState() => _DetailsExpandableListState();
}

class _DetailsExpandableListState extends State<DetailsExpandableList> {
  List<VenueDetails> sectionList = [
    VenueDetails('Venue'),
    VenueDetails('How to book'),
    VenueDetails('Promotion details'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.0.w),
      child: ExpandableListView(
        builder: SliverExpandableChildDelegate<String,
            VenueDetails>(
            sectionList: sectionList,
            headerBuilder: (context, sectionIndex, index) =>
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (sectionList[sectionIndex]
                          .isSectionExpanded()) {
                        sectionList[sectionIndex]
                            .setSectionExpanded(false);
                      } else {
                        sectionList[sectionIndex]
                            .setSectionExpanded(true);
                      }
                    });
                  },
                  child: Column(
                    children: [

                      if (sectionIndex > 0)
                        SizedBox(
                          height: 1.0,
                          child: Container(
                            color: Colors.grey[300],
                            height: 1.0,
                          ),
                        ),

                      Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 25.0.w),
                        child: Container(
                          color: Color(0xFFFAFAFA),
                          child: Row(
                            children: [
                              Text(
                                sectionList[sectionIndex].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Icon(
                                sectionList[sectionIndex].expanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                size: 70.0.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            itemBuilder:
                (context, sectionIndex, itemIndex, index) {
              String item =
              sectionList[sectionIndex].items[itemIndex];
              return Text(item);
            }),
      ),
    );
  }
}
