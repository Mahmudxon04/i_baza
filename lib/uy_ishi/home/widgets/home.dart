import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_baza/core/route/basket_route.dart';
import 'package:i_baza/core/route/catalog_route.dart';
import 'package:i_baza/core/route/main_route.dart';
import 'package:i_baza/core/route/profile_route.dart';
import 'package:i_baza/core/route/sell_route.dart';

import 'destination.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;

  final icons = [
    'assets/icons/home.svg',
    'assets/icons/catalog.svg',
    'assets/icons/buyurtma.svg',
    'assets/icons/savat.svg',
    'assets/icons/profile.svg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: index,
              children: const [
                DestinationPage(onGenerateRoute: MainRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: CatalogRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: SellRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: BasketRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: ProfileRoute.onGenerateRoute),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 80 + MediaQuery.of(context).padding.top,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
            ),
            child: Row(
              children: List.generate(
                  5,
                  (index) => Expanded(
                          child: GestureDetector(
                        onTap: () {
                          this.index = index;
                          setState(
                            () {},
                          );
                        },
                        child: SvgPicture.asset(
                          icons[index],
                          color: const Color(0xFFD7D7D7),
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
