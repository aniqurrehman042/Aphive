class Filter {
  String name;
  bool checked;
  List<Filter> childFilters;

  Filter({
    this.name,
    this.checked = true,
    this.childFilters = const [],
  });
}
