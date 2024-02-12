import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_baza/core/routs_name/main_route_name.dart';
import 'package:i_baza/core/routs_name/sell_route_name.dart';
import 'package:i_baza/uy_ishi/main_screen.dart';
import 'package:i_baza/uy_ishi/sell_screen.dart';

class SellRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ?? "";
    switch (routeName) {
      case SellRouteName.sell:
        return CupertinoPageRoute(builder: (context) => const SellScreen());
      default:
    }
  }
}
