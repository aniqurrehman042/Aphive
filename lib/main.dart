import 'package:aphive/routes.dart';
import 'package:aphive/views/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1275, 2770),
      allowFontScaling: true,
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: MaterialApp(
          title: 'Aphive',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Montserrat'
          ),
          onGenerateRoute: getOnGenerateRoute,
          home: HomePage(),
        ),
      ),
    );
  }
}