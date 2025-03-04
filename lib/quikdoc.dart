import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_doc/core/routing/app_router.dart';
import 'package:quick_doc/core/routing/routes.dart';
import 'package:quick_doc/core/theming/colors.dart';

class QuikDocApp extends StatelessWidget {
  final AppRouter appRouter;
  const QuikDocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
           theme: ThemeData(
            primaryColor: ColorManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,

           ),
          title: 'Quik Doc App',
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute),
    );
  }
}
