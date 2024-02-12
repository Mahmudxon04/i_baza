

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_baza/catalog.dart';

import '../routs_name/caralog_routs_name.dart';


class CatalogRoute{
  static Route? onGenerateRoute(RouteSettings settings){
    final String routeName = settings.name??"";
    switch(routeName){
      case CatalogRouteName.catalog:
        return CupertinoPageRoute(builder: (context)=>const CatalogScreen());
      default:
    }
  }
}