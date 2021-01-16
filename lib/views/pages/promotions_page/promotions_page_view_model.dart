import 'package:aphive/data/models/offer.dart';
import 'package:aphive/data/models/venue.dart';

class PromotionsPageViewModel {
  List<Offer> offers = [
    Offer(
      title: 'Offer 1 title',
      description: 'Offer 1 description',
      value: 'Offer 1 value',
      venue: Venue(
        name: 'Venue name',
      ),
      imageUrls: [
        'https://static.im-a-puzzle.com/gallery/Miscellaneous/Food/Vegetables-Casserole.jpg'
      ],
    ),
    Offer(
      title: 'Offer 2 title',
      description: 'Offer 2 description',
      value: 'Offer 2 value',
      venue: Venue(
        name: 'Venue name',
      ),
      imageUrls: [
        'https://cdn.pixabay.com/photo/2016/04/23/22/35/healthy-food-1348430_1280.jpg'
      ],
    ),
    Offer(
      title: 'Offer 3 title',
      description: 'Offer 3 description',
      value: 'Offer 3 value',
      venue: Venue(
        name: 'Venue name',
      ),
      imageUrls: [
        'https://static.im-a-puzzle.com/gallery/Miscellaneous/Food/Vegetables-Casserole.jpg'
      ],
    ),
  ];
}