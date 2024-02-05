import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Katalog(),
    );
  }
}

class Katalog extends StatefulWidget {
  const Katalog({super.key});

  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {



  final images = [
    "assets/images/kiyim.png",
    "assets/images/yostiq.png",
    "assets/images/quyoncha.png",
    "assets/images/karam.png",
    "assets/images/atir.png",
    "assets/images/dori.png",
    "assets/images/pockorin.png",
    "assets/images/tozalagich.png",
    "assets/images/top.png",
    "assets/images/balon.png",
    "assets/images/plesteshin.png",
    "assets/images/noutbook.png",
    "assets/images/kirmoshina.png",
    "assets/images/divan.png",
    "assets/images/asbob.png",
    "assets/images/daftar.png",
    "assets/images/gul.png",
    "assets/images/uzuk.png",
    "assets/images/uzuk.png",
    "assets/images/uzuk.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset("assets/images/appbar.svg"),
        title: Text("Katalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,

            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade50, width: 2),
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Text("salom"),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      images[index],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
