import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_baza/core/routs_name/basket_route_name.dart';
import 'package:i_baza/uy_ishi/basket_screen.dart';


class BasketRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ?? "";
    switch (routeName) {
      case BasketRouteName.basket:
        return CupertinoPageRoute(builder: (context) => const BasketScreen());
      default:
    }
  }
}
