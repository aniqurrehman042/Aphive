import 'package:aphive/data/models/venue.dart';

class Offer {
  String title;
  String value;
  String validFrom;
  String expiryDate;
  String description;
  String reservationDetails;
  Venue venue;
  List<String> imageUrls;

  Offer({
    this.title,
    this.value,
    this.validFrom,
    this.expiryDate,
    this.description,
    this.reservationDetails,
    this.venue,
    this.imageUrls,
  });
}
