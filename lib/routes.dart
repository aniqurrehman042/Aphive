import 'package:aphive/views/pages/experiences_page/experiences_page.dart';
import 'package:aphive/views/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> getOnGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.tag:
      return MaterialPageRoute(builder: (context) => HomePage());
    case ExperiencesPage.tag:
      return MaterialPageRoute(builder: (context) => ExperiencesPage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}