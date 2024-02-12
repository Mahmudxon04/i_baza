import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_baza/core/routs_name/profile_route_name.dart';
import 'package:i_baza/uy_ishi/profile_screen.dart';


class ProfileRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ?? "";
    switch (routeName) {
      case ProfileRouteName.profile:
        return CupertinoPageRoute(builder: (context) => const ProfileScreen());
      default:
    }
  }
}
