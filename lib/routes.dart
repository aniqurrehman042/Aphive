import 'package:get/get.dart';
import 'package:aphive/views/pages/experiences_page/experiences_page.dart';
import 'package:aphive/views/pages/home_page/home_page.dart';
import 'views/pages/offer_details_page/offer_details_page.dart';
import 'views/pages/promotions_page/promotions_page.dart';

class Routes {
  static const homePage = 'HomePage';
  static const experiencesPage = 'ExperiencesPage';
  static const offerDetailsPage = 'OfferDetailsPage';
  static const promotionsPage = 'PromotionsPage';

  static List<GetPage> all = [
    GetPage(name: homePage, page: () => HomePage()),
    GetPage(name: experiencesPage, page: () => ExperiencesPage()),
    GetPage(name: offerDetailsPage, page: () => OfferDetailsPage()),
    GetPage(name: promotionsPage, page: () => PromotionsPage()),
  ];
}
