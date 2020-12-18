import 'package:sticky_and_expandable_list/sticky_and_expandable_list.dart';

class VenueDetails extends ExpandableListSection<String> {
  String title;
  bool expanded = false;
  List<String> items = [
    'Address: 18, Old Brompton Road, London, SW 7 4HD\nPhone Number: 020 7467 1400\nWebpage: www.FattoriaRestaurant.com\n\nDescription: Fattoria is a unique Italian Restaurant located in London.'
  ];

  VenueDetails(this.title);

  @override
  List<String> getItems() {
    return items;
  }

  @override
  bool isSectionExpanded() {
    return expanded;
  }

  @override
  void setSectionExpanded(bool expanded) {
    this.expanded = expanded;
  }
}
