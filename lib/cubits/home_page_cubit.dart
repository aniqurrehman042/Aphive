import 'package:aphive/data/models/filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageState {
  bool promotionsDrawer;
  bool promotionsAnytimeChecked;
  bool experiencesAnytimeChecked;
  String rightMenuPromotionsFromDate;
  String rightMenuExperiencesFromDate;
  String rightMenuPromotionsToDate;
  String rightMenuExperiencesToDate;
  List<Filter> rightMenuPromotionsFilters;
  List<Filter> rightMenuExperiencesFilters;

  HomePageState({
    this.promotionsDrawer,
    this.promotionsAnytimeChecked,
    this.experiencesAnytimeChecked,
    this.rightMenuPromotionsFromDate,
    this.rightMenuExperiencesFromDate,
    this.rightMenuPromotionsToDate,
    this.rightMenuExperiencesToDate,
    this.rightMenuPromotionsFilters,
    this.rightMenuExperiencesFilters,
  });

  HomePageState getNewState(HomePageState homePageState) {
    return HomePageState(
      rightMenuExperiencesFromDate:
          homePageState.rightMenuExperiencesFromDate ??
              this.rightMenuExperiencesFromDate,
      promotionsDrawer: homePageState.promotionsDrawer ?? this.promotionsDrawer,
      experiencesAnytimeChecked: homePageState.experiencesAnytimeChecked ??
          this.experiencesAnytimeChecked,
      rightMenuPromotionsFilters: homePageState.rightMenuPromotionsFilters ??
          this.rightMenuPromotionsFilters,
      rightMenuExperiencesFilters: homePageState.rightMenuExperiencesFilters ??
          this.rightMenuExperiencesFilters,
      promotionsAnytimeChecked: homePageState.promotionsAnytimeChecked ??
          this.promotionsAnytimeChecked,
      rightMenuExperiencesToDate: homePageState.rightMenuExperiencesToDate ??
          this.rightMenuExperiencesToDate,
      rightMenuPromotionsFromDate: homePageState.rightMenuPromotionsFromDate ??
          this.rightMenuPromotionsFromDate,
      rightMenuPromotionsToDate: homePageState.rightMenuPromotionsToDate ??
          this.rightMenuPromotionsToDate,
    );
  }
}

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit()
      : super(
          HomePageState(
            promotionsDrawer: true,
            promotionsAnytimeChecked: true,
            experiencesAnytimeChecked: true,
            rightMenuPromotionsFromDate: '22 Oct 2020',
            rightMenuPromotionsToDate: '27 Oct 2020',
            rightMenuExperiencesFromDate: '22 Oct 2020',
            rightMenuExperiencesToDate: '27 Oct 2020',
            rightMenuPromotionsFilters: [
              Filter(
                name: 'All Promotions',
                childFilters: [
                  Filter(
                    name: 'Food & Drinks',
                  ),
                  Filter(
                    name: 'Fashion',
                  ),
                  Filter(
                    name: 'Cinema & Theatres',
                  ),
                  Filter(
                    name: 'Grocery',
                  ),
                  Filter(
                    name: 'Beauty',
                  ),
                  Filter(
                    name: 'Services',
                  ),
                ],
              ),
            ],
            rightMenuExperiencesFilters: [
              Filter(
                name: 'All Experiences',
                childFilters: [
                  Filter(
                    name: 'Food & Drinks',
                  ),
                  Filter(
                    name: 'Celebrations',
                  ),
                  Filter(
                    name: 'Kids',
                  ),
                  Filter(
                    name: 'All Performances',
                    childFilters: [
                      Filter(
                        name: 'Art',
                      ),
                      Filter(
                        name: 'Fashion',
                      ),
                      Filter(
                        name: 'Music',
                      ),
                      Filter(
                        name: 'Sport',
                      ),
                    ]
                  ),
                ]
              ),
            ],
          ),
        );

  setPromotionsAnytimeChecked(bool value) => emit(
        state.getNewState(
          HomePageState(promotionsAnytimeChecked: value),
        ),
      );

  setDrawer(bool promotionsDrawer) => emit(state.getNewState(HomePageState(promotionsDrawer: promotionsDrawer)));

  updateFilter() {
    HomePageState homePageState;
    if (state.promotionsDrawer) {
      homePageState = HomePageState(
          rightMenuPromotionsFilters: state.rightMenuPromotionsFilters);
    } else {
      homePageState = HomePageState(
          rightMenuExperiencesFilters: state.rightMenuExperiencesFilters);
    }
    emit(state.getNewState(homePageState));
  }
}
