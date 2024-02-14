import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final picture = [
    'lib/assets/images/img1.png',
    'lib/assets/images/img2.png',
    'lib/assets/images/img3.png',
    'lib/assets/images/img4.png',
    'lib/assets/images/img5.png',
    'lib/assets/images/img6.png'
  ];
  final name = [
    "KNAUF",
    "Quelyd",
    "Matrix",
    "MAPEI",
    "PUMA",
    "Snegurochka",
  ];

  final descriptionProduct = [
    "Shtukaturka ROTBAND KNAUF",
    "“Quelyd” Gul qog‘ozlar uchun yelim",
    "Matrix kesish uchun maxsus asbob",
    "“Ultracolor Plus”dan maxsus jamlanma",
    "Krasovki. Puma Ferrari Drift Cat 5 Ultra.",
    "“Snegurochka” A4 500 varaq",
  ];

  final price = [
    "84 000 UZS",
    "84 000 UZS",
    "84 000 UZS",
    "41 500 UZS",
    "84 000 UZS",
    "84 000 UZS",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salom"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          shrinkWrap: true,
            //998833180
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 164 / 315,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade100, width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 50,
                      height: 28,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF0CB23),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "5",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.white.withOpacity(0.6),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Image.asset(picture[index]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: const Color(0xFFF4F5F7)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    name[index],
                                    style: const TextStyle(
                                        fontSize: 12, color: Color(0xFF2261AA)),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    descriptionProduct[index],
                                    style: const TextStyle(
                                        fontSize: 12, color: Color(0xFF6B6C6F)),
                                  ),
                                  Text(
                                    index.isEven?"184 000 UZS" : "",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFFF9524E),
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Color(0xFFF9524E),
                                    ),
                                  ),
                                  Text(
                                    price[index],
                                    style: const TextStyle(
                                        fontSize: 12, color: Color(0xFF2261AA)),
                                  ),
                                  const SizedBox(height: 3,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 108,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF0CB23),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset("lib/assets/svg/basket.svg",width: 16,height: 16,),
                                           const Text("Savatchaga",style: TextStyle(fontSize: 12,color: Color(0xFF383838)),)
                                          ],
                                          
                                        ),
                                      ),
                                      SvgPicture.asset("lib/assets/svg/like.svg")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
