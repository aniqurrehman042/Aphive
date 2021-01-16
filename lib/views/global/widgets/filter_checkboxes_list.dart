import 'package:aphive/cubits/home_page_cubit.dart';
import 'package:aphive/data/models/filter.dart';
import 'package:aphive/views/global/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'aphive_checkbox.dart';

class FilterCheckBoxesList extends StatelessWidget {
  FilterCheckBoxesList({
    this.homePageState,
  });

  final HomePageCubit _homePageCubit = Get.find();
  final HomePageState homePageState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: getFilterWidgets(
        filters: homePageState.promotionsDrawer
            ? homePageState.rightMenuPromotionsFilters
            : homePageState.rightMenuExperiencesFilters,
        promotionsDrawer: homePageState.promotionsDrawer,
        filterWidgets: [],
      ),
    );
  }

  List<Widget> getFilterWidgets({
    List<Filter> filters,
    bool promotionsDrawer,
    int hierarchyLevel = 0,
    List<Widget> filterWidgets,
  }) {
    for (int i = 0; i < filters.length; i++) {
      filterWidgets.add(
        Padding(
          padding: EdgeInsets.only(
            bottom: 120.r,
            left: 60.r * hierarchyLevel,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                filters[i].name,
                style: AppTextStyles.getBigSectionHeadingTextStyle(),
              ),
              AphiveCheckbox(
                value: filters[i].checked,
                size: 50.r,
                onChanged: (value) {
                  filters[i] = Filter(
                    name: filters[i].name,
                    checked: value,
                    childFilters: filters[i].childFilters,
                  );
                  _homePageCubit.updateFilter();
                },
              ),
            ],
          ),
        ),
      );
      filterWidgets = getFilterWidgets(
        filters: filters[i].childFilters,
        promotionsDrawer: promotionsDrawer,
        hierarchyLevel: hierarchyLevel + 1,
        filterWidgets: filterWidgets,
      );
    }

    return filterWidgets;
  }
}
