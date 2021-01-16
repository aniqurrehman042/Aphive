import 'package:aphive/cubits/home_page_cubit.dart';
import 'package:aphive/views/pages/offer_details_page/offer_details_view_model.dart';
import 'package:aphive/views/pages/promotions_page/promotions_page_view_model.dart';
import 'package:get/get.dart';

class DependencyInjector {
  static void injectDependencies() {
    /// View Models
    Get.put(OfferDetailsViewModel());
    Get.put(PromotionsPageViewModel());

    /// Cubits
    Get.put(HomePageCubit());
  }
}
