import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../uy_ishi/home/widgets/home.dart';

import '../pages/splash.dart';
import '../routs_name/app_route_name.dart';


class AppRoute{
  static Route? onGenerateRoute(RouteSettings settings){
    final String routeName = settings.name??"";
    switch(routeName){
      case AppRouteName.splash:
        return CupertinoPageRoute(builder: (context)=>const SplashScreen());
      case AppRouteName.home:
        return CupertinoPageRoute(builder: (context)=>const HomePage());
      case "/authentication":
        return CupertinoPageRoute(builder: (context)=>const Scaffold());
      default:
    }
  }
}