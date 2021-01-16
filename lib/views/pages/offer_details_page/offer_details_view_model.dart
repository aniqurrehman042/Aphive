import 'package:aphive/data/models/offer.dart';
import 'package:aphive/data/models/venue.dart';

class OfferDetailsViewModel {
  Offer offer = Offer(
    title: 'Offer Title',
    description: 'Offer Description',
    expiryDate: 'Expiry Date',
    value: 'Offer Value',
    validFrom: 'Valid From',
    reservationDetails: 'Reservation Details',
    venue: Venue(
      name: 'Venue Name',
      addressLine1: 'Venue Address Line 1',
      addressLine2: 'Venue Address Line 2',
      phoneNumber: 'Venue Phone Number',
      webPage: 'Venue Wep Page',
      information: 'Offer Venue Information'
    ),
    imageUrls: [
      'https://static.im-a-puzzle.com/gallery/Miscellaneous/Food/Vegetables-Casserole.jpg',
      'https://cdn.pixabay.com/photo/2016/04/23/22/35/healthy-food-1348430_1280.jpg',
    ]
  );
}