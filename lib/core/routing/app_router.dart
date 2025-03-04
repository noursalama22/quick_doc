import 'package:flutter/material.dart';
import 'package:quick_doc/core/routing/routes.dart';
import 'package:quick_doc/features/login/ui/widgets/login_screen.dart';
import 'package:quick_doc/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    // arguments to be passed in any screen like ( arguments as classname)
    final args = settings.arguments;
    switch (settings.name){
      case Routes.onBoardingScreen : 
return MaterialPageRoute(builder: (_) =>  const OnBoardingScreen(),);

     case Routes.loginScreen : 
return MaterialPageRoute(builder: (_) =>const LoginScreen() ,);
default :
return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'),),),);

    }
  }
}