import 'package:aphive/core/dependency_injector.dart';
import 'package:aphive/cubits/home_page_cubit.dart';
import 'package:aphive/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  DependencyInjector.injectDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// ScreenUtil for responsive sizes and fonts
    return ScreenUtilInit(
      designSize: Size(1275, 2770),
      allowFontScaling: true,
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),

        /// Global Providers
        child: MultiBlocProvider(
          /// Global Providers List
          providers: [
            BlocProvider(create: (context) => Get.find<HomePageCubit>()),
          ],

          /// GetMaterialApp for utilizing GetX Navigation
          child: GetMaterialApp(
            title: 'Aphive',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: 'Montserrat',
            ),
            getPages: Routes.all,
            initialRoute: Routes.homePage,
          ),
        ),
      ),
    );
  }
}
